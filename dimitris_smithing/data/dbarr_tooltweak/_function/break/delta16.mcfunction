advancement revoke @s only dbarr_tooltweak:deltas/break_delta_16
#say break_delta_16

data modify storage dbarr:tmp delta set value 16
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    