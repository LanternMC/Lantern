# Create scoreboards provided for all Lantern modules
scoreboard objectives add lantern.global dummy
scoreboard objectives add lantern.const dummy

# Enable dimension tags (embedders can delete the function to disable them)
function lantern.1:flags/enable_dimension_tags

# Unmark the chunks for forceloading to allow them to be marked once more
forceload remove -30000000 8880
execute in minecraft:the_nether run forceload remove -30000000 8880
execute in minecraft:the_end run forceload remove -30000000 8880

# Mark the chunks for forceloading
forceload add -30000000 8880
execute in minecraft:the_nether run forceload add -30000000 8880
execute in minecraft:the_end run forceload add -30000000 8880

# Initialize forceloaded chunks
function lantern_impl:v1/utilities/initialize_generic
execute in minecraft:the_nether run function lantern_impl:v1/utilities/initialize_generic
execute in minecraft:the_end run function lantern_impl:v1/utilities/initialize_generic

# Teleport the utility entity to the proper location
teleport cb-0-0-0-1 -30000000 0 8880

# Create utility entity if it does not already exist
execute unless entity cb-0-0-0-1 run summon minecraft:armor_stand -30000000 0 8880 {UUIDLeast:1L,UUIDMost:871878361088L,NoGravity:1b,Invisible:1b,Invulnerable:1b}
