
set lastobject=`dopsolvenumobjects() - 1`
for i = 0 to $lastobject
    set lastimpact=`dopnumrecords(dopsolvedopnet(), dopsolveobject($i), \
				  "Impacts", "Impacts") - 1`
    set totalimpulse=0
    for j = 0 to $lastimpact
	# Loop through all impacts, adding the impulse value to the total.
	set impulse=`dopfield(dopsolvedopnet(), dopsolveobject($i), \
			      "Impacts", "Impacts", $j, "impulse")`
	set totalimpulse=`$totalimpulse + $impulse`
    end

    # Add a SIM_EmptyData to store impulse data
    dopsolveadddata $i SumImpacts SIM_EmptyData
    # Store the total impulse.
    dopsolvesetoption $i SumImpacts totalimpulse $totalimpulse
    # Store the impulse color as the total impulse times 1/50000.
    dopsolvesetoption $i SumImpacts impulsecolor `$totalimpulse/50000`
end
