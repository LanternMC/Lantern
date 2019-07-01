# Enable the lantern.ignore trigger for all non-ignoring players
scoreboard players add @a lantern.ignore 0
scoreboard players enable @a[scores={lantern.ignore=0}] lantern.ignore

# Increment scoreboard timer used for tellraw display interval
scoreboard players add lantern.forceload_timer lantern.global 1
execute unless score lantern.forceload_timer lantern.global matches 0..49 run scoreboard players set lantern.forceload_timer lantern.global 0

# Check Overworld forceload state
execute store success score lantern.forceload lantern.global run forceload query -30000000 8880
execute if score lantern.forceload_timer lantern.global matches 1 if score lantern.forceload lantern.global matches 0 positioned ~ 8192 ~ run function lantern_impl:v1/forceload/state/wait_overworld
execute if score lantern.forceload lantern.global matches 1 if score lantern.forceload_state lantern.global matches 1 run function lantern_impl:v1/forceload/state/continue

# Check The Nether forceload state
execute in minecraft:the_nether store success score lantern.forceload lantern.global run forceload query -30000000 8880
execute if score lantern.forceload_timer lantern.global matches 1 unless score lantern.forceload_state lantern.global matches 1 if score lantern.forceload lantern.global matches 0 positioned ~ 8192 ~ run function lantern_impl:v1/forceload/state/wait_the_nether
execute if score lantern.forceload lantern.global matches 1 if score lantern.forceload_state lantern.global matches 2 run function lantern_impl:v1/forceload/state/continue

# Check The End forceload state
execute in minecraft:the_end store success score lantern.forceload lantern.global run forceload query -30000000 8880
execute if score lantern.forceload_timer lantern.global matches 1 unless score lantern.forceload_state lantern.global matches 1..2 if score lantern.forceload lantern.global matches 0 positioned ~ 8192 ~ run function lantern_impl:v1/forceload/state/wait_the_end
execute if score lantern.forceload lantern.global matches 1 if score lantern.forceload_state lantern.global matches 3 run function lantern_impl:v1/forceload/state/continue

# If all chunks are forceloaded, but at least one of those chunks is newly
# forceloaded, emit a success message so the end user knows they installed
# Lantern successfully
execute if score lantern.forceload_state lantern.global matches 4 positioned ~ 8192 ~ run function lantern_impl:v1/forceload/state/forceload_success

# If all chunks are forceloaded, confirm that they are fully loaded
execute unless score lantern.forceload_state lantern.global matches 1..3 run function lantern_impl:v1/forceload/check_blocks

# If not all chunks are forceloaded, schedule this function to run next tick
execute if score lantern.forceload_state lantern.global matches 1..3 run function lantern_impl:v1/forceload/schedule
