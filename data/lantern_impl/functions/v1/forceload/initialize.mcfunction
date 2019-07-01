# Check if the player has forceloaded the required chunks
execute store success score lantern.forceload lantern.global run forceload query -30000000 8880
execute if score lantern.forceload lantern.global matches 1 in minecraft:the_nether store success score lantern.forceload lantern.global run forceload query -30000000 8880
execute if score lantern.forceload lantern.global matches 1 in minecraft:the_end store success score lantern.forceload lantern.global run forceload query -30000000 8880

# Check if the forceloading has actually gone through
execute if score lantern.forceload lantern.global matches 1 store success score lantern.forceload lantern.global if blocks -30000000 0 8880 -30000000 0 8880 -30000000 0 8880 all
execute if score lantern.forceload lantern.global matches 1 in minecraft:the_nether store success score lantern.forceload lantern.global if blocks -30000000 0 8880 -30000000 0 8880 -30000000 0 8880 all
execute if score lantern.forceload lantern.global matches 1 in minecraft:the_end store success score lantern.forceload lantern.global if blocks -30000000 0 8880 -30000000 0 8880 -30000000 0 8880 all

# If forceloading is already complete, schedule the load hook for this tick
execute if score lantern.forceload lantern.global matches 1 run schedule function #lantern_impl:v1/load 1

# If forceloading is already complete, finish the loading process
execute if score lantern.forceload lantern.global matches 1 run function lantern_impl:v1/forceload/finish

# Otherwise, wait for forceloading to complete
execute if score lantern.forceload lantern.global matches 0 run function lantern_impl:v1/forceload/start
