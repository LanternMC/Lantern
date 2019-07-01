# Teleport the UUID entity to the proper location
teleport cb-0-0-0-1 -30000000 0 8880

# Summon the UUID entity if it does not already exist
execute unless entity cb-0-0-0-1 run summon minecraft:armor_stand -30000000 0 8880 {UUIDLeast:1L,UUIDMost:871878361088L,NoGravity:1b,Invisible:1b,Invulnerable:1b}

# Refresh the Overworld repeating command block
setblock -30000000 0 8883 minecraft:stone
setblock -30000000 0 8883 minecraft:repeating_command_block[facing=west]{CustomName:'""',Command:"function #lantern_impl:v1/tick_overworld",auto:1b,TrackOutput:0b}
