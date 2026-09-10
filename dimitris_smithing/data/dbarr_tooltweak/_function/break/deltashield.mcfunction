advancement revoke @s only dbarr_tooltweak:break_delta_shield
#say break_delta_shield
data modify storage dbarr:tmp is_shield set value 1b
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp is_shield
    