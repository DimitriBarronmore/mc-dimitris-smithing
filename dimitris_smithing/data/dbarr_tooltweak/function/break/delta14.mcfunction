advancement revoke @s only dbarr_tooltweak:deltas/break_delta_14
#say break_delta_14

data modify storage dbarr:tmp delta set value 14
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    