# Reset the fake players used
function lantern_impl:v1/forceload/cleanup

# Initialize forceloaded chunks
function #lantern_impl:v1/initialize_overworld
execute in minecraft:the_nether run function #lantern_impl:v1/initialize_the_nether
execute in minecraft:the_end run function #lantern_impl:v1/initialize_the_end

# Indicate that Lantern version 1 is loaded
scoreboard players set lantern lantern.loaded 1
