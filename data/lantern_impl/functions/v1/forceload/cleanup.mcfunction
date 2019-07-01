# Reset the fake players used in loading
scoreboard players reset lantern.forceload lantern.global
scoreboard players reset lantern.forceload_timer lantern.global
scoreboard players reset lantern.forceload_state lantern.global
scoreboard players reset lantern.forceload_messages lantern.global

# Clear the lantern.ignore scoreboard
scoreboard players reset * lantern.ignore

# Delete the lantern.ignore scoreboard
scoreboard objectives remove lantern.ignore
