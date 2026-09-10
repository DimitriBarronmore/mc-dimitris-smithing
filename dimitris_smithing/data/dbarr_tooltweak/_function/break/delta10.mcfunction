advancement revoke @s only dbarr_tooltweak:deltas/break_delta_10
#say break_delta_10

data modify storage dbarr:tmp delta set value 10
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    