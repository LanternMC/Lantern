# Create scoreboards provided for all Lantern modules
scoreboard objectives add lantern.global dummy
scoreboard objectives add lantern.const dummy

# Enable forceloading (embedders can delete the function to disable this)
function lantern.1:flags/enable_forceloading

# Enable dimension tags (embedders can delete the function to disable them)
execute if score lantern.forceloading lantern.flags matches 1 run function lantern.1:flags/enable_dimension_tags

# If forceloading is disabled, but Lantern was either initialized with dimension
# tags in a version that did not store feature constants, or stored that
# dimension tags were previously added, forcibly unload the dimension tags
execute unless score lantern.forceloading lantern.flags matches 1 unless score lantern.version lantern.const matches 3.. if score lantern.cmd_output lantern.global matches 1 run function lantern_impl:v3/utilities/force_unload
execute unless score lantern.forceloading lantern.flags matches 1 if score lantern.version lantern.const matches 3.. if score lantern.dimension_tags lantern.const matches 1 run function lantern_impl:v3/utilities/force_unload

# Clear constant scoreboard, as constants are redefined every reload anyway
scoreboard players reset * lantern.const

# Store feature constants for the next initialization of Lantern to rely on
scoreboard players operation lantern.version lantern.const = lantern_impl lantern.versions
execute store success score lantern.forceloading lantern.const if score lantern.forceloading lantern.flags matches 1
execute store success score lantern.dimension_tags lantern.const if score lantern.dimension_tags lantern.flags matches 1

# If forceloading is enabled, forceload the Lantern chunks
execute if score lantern.forceloading lantern.flags matches 1 run function lantern_impl:v3/utilities/forceload
