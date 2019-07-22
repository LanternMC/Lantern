# Unmark the chunks for forceloading to allow them to be marked once more
forceload remove -30000000 8880
execute in minecraft:the_nether run forceload remove -30000000 8880
execute in minecraft:the_end run forceload remove -30000000 8880

# Mark the chunks for forceloading
forceload add -30000000 8880
execute in minecraft:the_nether run forceload add -30000000 8880
execute in minecraft:the_end run forceload add -30000000 8880

# Clear all revisions of the dimension tag command blocks
function lantern_impl:v3/utilities/clear_dimension_tags

# Initialize forceloaded chunks
function lantern_impl:v3/utilities/initialize_generic
execute in minecraft:the_nether run function lantern_impl:v3/utilities/initialize_generic
execute in minecraft:the_end run function lantern_impl:v3/utilities/initialize_generic

# Add lantern.Dimension information to the Lantern lectern
data modify block -30000000 0 8880 Book.tag.lantern.Dimension set value 0
execute in minecraft:the_nether run data modify block -30000000 0 8880 Book.tag.lantern.Dimension set value -1
execute in minecraft:the_end run data modify block -30000000 0 8880 Book.tag.lantern.Dimension set value 1

# If dimension tags are enabled, place the dimension tag command blocks
execute if score lantern.dimension_tags lantern.flags matches 1 run function lantern_impl:v3/utilities/place_dimension_tags

# Teleport the utility entity to the proper location
teleport cb-0-0-0-1 -30000000 0 8880

# Create utility entity if it does not already exist
execute unless entity cb-0-0-0-1 run summon minecraft:armor_stand -30000000 0 8880 {UUIDLeast:1L,UUIDMost:871878361088L,NoGravity:1b,Invisible:1b,Invulnerable:1b}
