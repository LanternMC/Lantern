# Combine the current prefix with the next one
loot replace entity @s weapon.offhand loot lantern_impl:v1/combine_prefix

# Remove the newly combined prefix from the list
data remove entity @s HandItems[0].lantern.Prefixes[-1]

# Decrement the prefix count
scoreboard players remove lantern.forceload_messages lantern.global 1

# Unless the prefix count equals 0, keep looping
execute unless score lantern.forceload_messages lantern.global matches 0 run function lantern_impl:v1/forceload/state/message/combine_loop
