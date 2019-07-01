# Add the Lantern prefix to the list of prefixes
data modify entity @s HandItems[0].tag.lantern.Prefixes append value '{"translate":"%1$s%1952671052$s%7238245$s%825241686$s","with":["Lantern",{"translate":"text.lantern.lantern_name"}]}'

# Define Lantern's forceload success message
data modify entity @s HandItems[0].tag.lantern.Message set value '{"translate":"%1$s%1952671052$s%7238245$s%825241686$s","with":[[{"text":"[Lantern] ","color":"aqua"},{"text":"Setup complete!","color":"green"}],{"translate":"format.lantern.simple_message","color":"aqua","with":[{"translate":"text.lantern.lectern_name"},{"translate":"text.lantern.setup_complete","color":"green"}]}]}'
