# Add the objectives needed for module initialization
scoreboard objectives add lantern.versions dummy
scoreboard objectives add lantern.loaded dummy
scoreboard objectives add lantern.counts dummy
scoreboard objectives add lantern.flags dummy

# Reset scoreboard values from previous initializations
scoreboard players reset * lantern.versions
scoreboard players reset * lantern.loaded
scoreboard players reset * lantern.counts
scoreboard players reset * lantern.flags
