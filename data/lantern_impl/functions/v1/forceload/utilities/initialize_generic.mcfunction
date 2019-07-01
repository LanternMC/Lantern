# Place the lectern if it is not already present
execute unless block -30000000 0 8880 minecraft:lectern[facing=east]{Book:{tag:{}}} run function lantern_impl:v1/forceload/utilities/place_lectern

# Place the sign if it is not already present
execute unless block -30000000 0 8881 minecraft:oak_wall_sign[facing=south] run setblock -30000000 0 8881 minecraft:oak_wall_sign[facing=south]

# Place the shulker box if it is not already present
execute unless block -30000000 0 8882 minecraft:purple_shulker_box[facing=up] run setblock -30000000 0 8882 minecraft:purple_shulker_box[facing=up]

# Fill the protective layer of bedrock
fill -30000000 1 8880 -29999985 1 8895 minecraft:bedrock

# Kill all item entities around the utility blocks
kill @e[type=minecraft:item,x=-30000000,y=0,z=8880,dx=0,dy=0,dz=3]
