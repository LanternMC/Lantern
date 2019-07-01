# Initialize forceload state scoreboard
scoreboard players set lantern.forceload_state lantern.global 0

# Add the lantern.ignore trigger, used to allow non-op players to surpress the
# tellraws they can't do anything about anyway
scoreboard objectives add lantern.ignore trigger

# Reset existing players of lantern.ignore so ignoring is canceled on reload
scoreboard players reset * lantern.ignore

# Allow all players to run the trigger
scoreboard players enable @a lantern.ignore
scoreboard players set @a lantern.ignore 0

# Schedule forceload check and loading
function lantern_impl:v1/forceload/schedule
