# Place the lectern if it is not already present
execute unless block -30000000 0 8880 minecraft:lectern[facing=east]{Book:{tag:{}}} run function lantern_impl:v3/utilities/place_lectern

# Place the sign if it is not already present
execute unless block -30000000 0 8881 minecraft:dark_oak_wall_sign[facing=south] run setblock -30000000 0 8881 minecraft:dark_oak_wall_sign[facing=south]

# Place the default shulker box if it is not already present
execute unless block -30000000 0 8882 minecraft:yellow_shulker_box[facing=up] run setblock -30000000 0 8882 minecraft:yellow_shulker_box[facing=up]

# Place the restricted shulker box if it is not already present
execute unless block -30000000 0 8883 minecraft:yellow_shulker_box[facing=up] run setblock -30000000 0 8883 minecraft:yellow_shulker_box[facing=up]

# Refresh the bow dropper 
setblock -30000000 0 8884 minecraft:stone
setblock -30000000 0 8884 minecraft:dropper[facing=down]
loot insert -30000000 0 8884 loot lantern_impl:v3/drop_bows

# Place a protective layer of bedrock
fill -30000000 1 8880 -29999985 1 8895 minecraft:bedrock

# Kill all item entities around the utility blocks
kill @e[type=minecraft:item,x=-30000000,y=0,z=8880,dx=0,dy=0,dz=4]
