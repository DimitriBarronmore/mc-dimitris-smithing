advancement revoke @s only dbarr_tooltweak:deltas/break_delta_4
#say break_delta_4

data modify storage dbarr:tmp delta set value 4
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    