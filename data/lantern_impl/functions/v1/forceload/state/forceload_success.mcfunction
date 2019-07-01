# Spawn the message holder entity
summon minecraft:armor_stand ~ 8192 ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,UUIDLeast:-7376142362170664550L,UUIDMost:-9026602009662567254L,HandItems:[{id:"minecraft:ice",Count:1b,tag:{lantern:{Prefixes:[]}}},{id:"minecraft:ice",Count:1b,tag:{display:{}}}]}

# Add messages and prefixes to the message holder entity
execute as 82bb114c-153c-4caa-99a2-ad9a221b599a run function lantern_impl:v1/message/forceload_success
execute as 82bb114c-153c-4caa-99a2-ad9a221b599a run function #lantern.1:message/forceload_success

# Count the number of message prefixes on the message holder entity
execute store result score lantern.forceload_messages lantern.global run data get entity 82bb114c-153c-4caa-99a2-ad9a221b599a HandItems[0].tag.lantern.Prefixes

# If there is only one message prefix, display the full message
execute if score lantern.forceload_messages lantern.global matches 1 run tellraw @a[scores={lantern.ignore=0}] {"nbt":"HandItems[0].tag.lantern.Message","entity":"82bb114c-153c-4caa-99a2-ad9a221b599a","interpret":true}

# Otherwise, use a built-in message that combines all message prefixes
execute if score lantern.forceload_messages lantern.global matches 2.. as 82bb114c-153c-4caa-99a2-ad9a221b599a run function lantern_impl:v1/forceload/state/message/combine_prefixes
execute if score lantern.forceload_messages lantern.global matches 0 run tellraw @a[scores={lantern.ignore=0}] {"translate":"%1$s%1953390924$s%7238245$s%825241686$s","with":[[{"text":"[","color":"aqua"},{"nbt":"HandItems[1].tag.display.Name","entity":"82bb114c-153c-4caa-99a2-ad9a221b599a","interpret":true},{"text":"] "},{"text":"Setup complete!","color":"green"}],{"translate":"format.lantern.simple_message","color":"aqua","with":[{"nbt":"HandItems[1].tag.display.Name","entity":"82bb114c-153c-4caa-99a2-ad9a221b599a","interpret":true},{"translate":"text.lantern.setup_complete","color":"green"}]}]}

# Kill the message holder entity
kill 82bb114c-153c-4caa-99a2-ad9a221b599a

# Reset the forceload state to 0 to avoid repeating this message
scoreboard players set lantern.forceload_state lantern.global 0
