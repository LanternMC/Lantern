# Refresh the End repeating command block
setblock -30000000 0 8883 minecraft:stone
execute if score lantern.dimension_tag lantern.counts matches 1.. run setblock -30000000 0 8883 minecraft:repeating_command_block[facing=west]{CustomName:'""',Command:"function #lantern_impl:v1/tick_the_end",auto:1b,TrackOutput:0b}