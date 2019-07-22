# Forcibly load the Overworld chunk, but ensure it returns to its previous state
execute store success score #forceloaded lantern.global run forceload query -30000000 8880
forceload remove -30000000 8880
forceload add -30000000 8880
execute if score #forceloaded lantern.global matches 0 run forceload remove -30000000 8880

# Forcibly load The Nether's chunk, but ensure it returns to its previous state
execute in minecraft:the_nether store success score #forceloaded lantern.global run forceload query -30000000 8880
execute in minecraft:the_nether run forceload remove -30000000 8880
execute in minecraft:the_nether run forceload add -30000000 8880
execute in minecraft:the_nether if score #forceloaded lantern.global matches 0 run forceload remove -30000000 8880

# Forcibly load The End's chunk, but ensure it returns to its previous state
execute in minecraft:the_end store success score #forceloaded lantern.global run forceload query -30000000 8880
execute in minecraft:the_end run forceload remove -30000000 8880
execute in minecraft:the_end run forceload add -30000000 8880
execute in minecraft:the_end if score #forceloaded lantern.global matches 0 run forceload remove -30000000 8880

# Clear all revisions of the dimension tag command blocks
function lantern_impl:v3/utilities/clear_dimension_tags

# Reset temporary variable
scoreboard players reset #forceloaded lantern.global
