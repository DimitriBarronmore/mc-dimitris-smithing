advancement revoke @s only dbarr_tooltweak:deltas/break_delta_6
#say break_delta_6

data modify storage dbarr:tmp delta set value 6
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    