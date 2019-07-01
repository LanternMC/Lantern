# Refresh the End repeating command block
setblock -30000000 0 8883 minecraft:stone
setblock -30000000 0 8883 minecraft:repeating_command_block[facing=west]{CustomName:'""',Command:"function lantern_impl:v1/the_end_tick",auto:1b,TrackOutput:0b}
