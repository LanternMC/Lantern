# Copy the final prefix into the current prefix tag
data modify entity @s HandItems[1].tag.display.Name set from entity @s HandItems[0].tag.lantern.Prefixes[-1]

# Remove the final prefix from the list
data remove entity @s HandItems[0].tag.lantern.Prefixes[-1]

# Decrement the prefix count
scoreboard players remove lantern.forceload_messages lantern.global 1

# Loop over all remaining prefixes to create the combined prefix
function lantern_impl:v1/forceload/state/message/combine_loop
