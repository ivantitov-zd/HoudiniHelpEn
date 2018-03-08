
set lastobject=`dopsolvenumobjects() - 1`
for i = 0 to $lastobject
    dopsolveadddata $i CustomData SIM_EmptyData
    # Initialize the moved value to zero.
    dopsolvesetoption -t bool $i CustomData moved false
    # Initialize the active value to one.
    dopsolvesetoption $i SolverParms/ActiveValue active 1
end
