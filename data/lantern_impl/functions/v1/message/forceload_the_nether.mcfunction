# Add the Lantern prefix to the list of prefixes
data modify entity @s HandItems[0].tag.lantern.Prefixes append value '{"translate":"%1$s%1952671052$s%7238245$s%825241686$s","with":["Lantern",{"translate":"text.lantern.lantern_name"}]}'

# Define Lantern's forceload prompt message
data modify entity @s HandItems[0].tag.lantern.Message set value '{"translate":"%1$s%1952671052$s%7238245$s%825241686$s","with":[[{"text":"[Lantern] ","color":"aqua"},{"text":"Setup (2/3): ","color":"green"},{"text":"[Click here]","color":"yellow","clickEvent":{"action":"run_command","value":"/execute in minecraft:the_nether run forceload add -30000000 8880"},"hoverEvent":{"action":"show_text","value":"Click here"}}," ",{"text":"[Ignore]","color":"red","clickEvent":{"action":"run_command","value":"/trigger lantern.ignore"},"hoverEvent":{"action":"show_text","value":"Hide prompts until next reload"}}],{"translate":"format.lantern.setup_message","color":"aqua","with":[{"translate":"text.lantern.lantern_name"},{"translate":"format.lantern.setup_label","with":[{"translate":"text.lantern.setup_state.2"}],"color":"green"},{"translate":"format.lantern.clickable_link","with":[{"translate":"text.lantern.click_here"}],"color":"yellow","clickEvent":{"action":"run_command","value":"/execute in minecraft:the_nether run forceload add -30000000 8880"},"hoverEvent":{"action":"show_text","value":{"translate":"text.lantern.click_here"}}},{"translate":"format.lantern.clickable_link","with":[{"translate":"text.lantern.ignore"}],"color":"red","clickEvent":{"action":"run_command","value":"/trigger lantern.ignore"},"hoverEvent":{"action":"show_text","value":{"translate":"text.lantern.ignore_hover"}}}]}]}'
