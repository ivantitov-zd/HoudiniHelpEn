
set lastobject=`dopsolvenumobjects() - 1`
for i = 0 to $lastobject
    # Check if we've been made inactive yet.
    set active=`dopoption(dopsolvedopnet(), dopsolveobject($i), \
			  "SolverParms/ActiveValue", "active")`
    if ( $active >= 1 ) then
	# We are still active. Check if we've moved yet.
	set moved=`dopoption(dopsolvedopnet(), dopsolveobject($i), \
			     "CustomData", "moved")`
	# Calculate our speed, which we'll need later.
	set vx=`dopoption(dopsolvedopnet(), dopsolveobject($i), \
			  "Position", "velx")`
	set vy=`dopoption(dopsolvedopnet(), dopsolveobject($i), \
			  "Position", "vely")`
	set vz=`dopoption(dopsolvedopnet(), dopsolveobject($i), \
			  "Position", "velz")`
	set speed=`sqrt($vx * $vx + $vy * $vy + $vz * $vz)`
	if ( $moved == 0 ) then
	    # We haven't moved yet. Check if we are moving fast enough
	    # yet, and if so set our moved flag.
	    if ( $speed > 0.5 ) then
		# Our speed is over the threshold. We are now "moved".
		dopsolvesetoption -t bool $i CustomData moved true
	    endif
	else
	    # We've moved. Check our velocity to see if it is low enough
	    # to mark us as inactive.
	    if ( $speed < 0.5 ) then
		# Our speed is under the threshold. Freeze.
		dopsolvesetoption $i SolverParms/ActiveValue active 0 
	    endif
	endif
    endif
end
