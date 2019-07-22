# Overwrite 1.0.0 dimension tag command blocks
execute if block -30000000 0 8883 minecraft:repeating_command_block{Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v1/tick_overworld"} run setblock -30000000 0 8883 minecraft:stone
execute in minecraft:the_nether if block -30000000 0 8883 minecraft:repeating_command_block{Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v1/tick_the_nether"} run setblock -30000000 0 8883 minecraft:stone
execute in minecraft:the_end if block -30000000 0 8883 minecraft:repeating_command_block{Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v1/tick_the_end"} run setblock -30000000 0 8883 minecraft:stone

# Overwrite 1.0.1 dimension tag command blocks
execute if block -29999985 0 8895 minecraft:repeating_command_block{Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v2/tick_overworld"} run setblock -29999985 0 8895 minecraft:stone
execute in minecraft:the_nether if block -29999985 0 8895 minecraft:repeating_command_block{Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v2/tick_the_nether"} run setblock -29999985 0 8895 minecraft:stone
execute in minecraft:the_end if block -29999985 0 8895 minecraft:repeating_command_block{Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v2/tick_the_end"} run setblock -29999985 0 8895 minecraft:stone

# Overwrite 1.1.0+ dimension tag command blocks
execute if block -29999985 0 8895 minecraft:repeating_command_block{CustomName:'{"translate":"%1953390924$s%7238245$s"}'} run setblock -29999985 0 8895 minecraft:stone
execute in minecraft:the_nether if block -29999985 0 8895 minecraft:repeating_command_block{CustomName:'{"translate":"%1953390924$s%7238245$s"}'} run setblock -29999985 0 8895 minecraft:stone
execute in minecraft:the_end if block -29999985 0 8895 minecraft:repeating_command_block{CustomName:'{"translate":"%1953390924$s%7238245$s"}'} run setblock -29999985 0 8895 minecraft:stone
