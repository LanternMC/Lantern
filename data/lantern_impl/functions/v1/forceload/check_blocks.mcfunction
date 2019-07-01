# Count number of chunks that are fully loaded
execute store success score lantern.forceload lantern.global if blocks -30000000 0 8880 -30000000 0 8880 -30000000 0 8880 all
execute in minecraft:the_nether if blocks -30000000 0 8880 -30000000 0 8880 -30000000 0 8880 all run scoreboard players add lantern.forceload lantern.global 1
execute in minecraft:the_end if blocks -30000000 0 8880 -30000000 0 8880 -30000000 0 8880 all run scoreboard players add lantern.forceload lantern.global 1

# If the number of fully loaded chunks is not 3, try again next tick
execute unless score lantern.forceload lantern.global matches 3 run function lantern_impl:v1/forceload/schedule

# Otherwise, finish loading
execute if score lantern.forceload lantern.global matches 3 run function lantern_impl:v1/forceload/finish
