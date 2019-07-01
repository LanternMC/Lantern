# Create scoreboards provided for all Lantern modules
scoreboard objectives add lantern.global dummy
scoreboard objectives add lantern.const dummy

# Run the forceloading process
execute if score lantern.forceload lantern.counts matches 1.. run function lantern_impl:v1/forceload/initialize
