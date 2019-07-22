# Place the Overworld's repeating command block
setblock -29999985 0 8895 minecraft:stone
setblock -29999985 0 8895 minecraft:repeating_command_block[facing=west]{CustomName:'{"translate":"%1953390924$s%7238245$s"}',Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v3/tick_overworld",auto:1b,TrackOutput:0b}

# Place The Nether's repeating command block
execute in minecraft:the_nether run setblock -29999985 0 8895 minecraft:stone
execute in minecraft:the_nether run setblock -29999985 0 8895 minecraft:repeating_command_block[facing=west]{CustomName:'{"translate":"%1953390924$s%7238245$s"}',Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v3/tick_the_nether",auto:1b,TrackOutput:0b}

# Place The End's repeating command block
execute in minecraft:the_end run setblock -29999985 0 8895 minecraft:stone
execute in minecraft:the_end run setblock -29999985 0 8895 minecraft:repeating_command_block[facing=west]{CustomName:'{"translate":"%1953390924$s%7238245$s"}',Command:"execute positioned -30000000 0 8880 run function #lantern_impl:v3/tick_the_end",auto:1b,TrackOutput:0b}

# Disable command block output unless previously disabled by Lantern
execute unless score lantern.cmd_output lantern.global matches 1 store success score lantern.cmd_output lantern.global run gamerule commandBlockOutput false
