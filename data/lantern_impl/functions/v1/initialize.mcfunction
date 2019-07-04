# Create scoreboards provided for all Lantern modules
scoreboard objectives add lantern.global dummy
scoreboard objectives add lantern.const dummy

# Enable dimension tags (embedders can delete the function to disable them)
function lantern.1:flags/enable_dimension_tags

# Unmark the chunks for forceloading to allow them to be marked once more
forceload remove -30000000 8880
execute in minecraft:the_nether run forceload remove -30000000 8880
execute in minecraft:the_end run forceload remove -30000000 8880

# Mark the chunks for forceloading, which causes them to be synchronously loaded
forceload add -30000000 8880
execute in minecraft:the_nether run forceload add -30000000 8880
execute in minecraft:the_end run forceload add -30000000 8880

# Initialize forceloaded chunks
function #lantern_impl:v1/initialize_overworld
execute in minecraft:the_nether run function #lantern_impl:v1/initialize_the_nether
execute in minecraft:the_end run function #lantern_impl:v1/initialize_the_end

# Indicate that Lantern version 1 is loaded
scoreboard players set lantern lantern.loaded 1
