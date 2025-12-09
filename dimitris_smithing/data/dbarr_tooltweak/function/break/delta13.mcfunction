advancement revoke @s only dbarr_tooltweak:deltas/break_delta_13
#say break_delta_13

data modify storage dbarr:tmp delta set value 13
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    