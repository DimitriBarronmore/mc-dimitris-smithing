advancement revoke @s only dbarr_tooltweak:deltas/break_delta_9
#say break_delta_9

data modify storage dbarr:tmp delta set value 9
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    