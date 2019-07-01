# Create scoreboards provided for all Lantern modules
scoreboard objectives add lantern.global dummy
scoreboard objectives add lantern.const dummy

# Enable forceloading (embedders can delete the function to disable this)
function lantern_impl:v1/enable_forceload

# Enable dimension tags (embedders can delete the function to disable them)
function lantern_impl:v1/enable_dimension_tags

# Halt the execution of the dimension tick tags during load
setblock -30000000 0 8883 minecraft:stone
execute in minecraft:the_nether run setblock -30000000 0 8883 minecraft:stone
execute in minecraft:the_end run setblock -30000000 0 8883 minecraft:stone

# Run the forceloading process
execute if score lantern.forceload lantern.counts matches 1.. run function lantern_impl:v1/forceload/initialize
