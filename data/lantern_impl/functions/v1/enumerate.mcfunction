# lantern_impl version 1
execute unless score lantern_impl lantern.versions matches 1.. run scoreboard players set lantern_impl lantern.versions 1

# Lantern version 1
execute unless score lantern lantern.versions matches 1.. run scoreboard players set lantern lantern.versions 1

# Increment lantern_impl count
scoreboard players add lantern_impl lantern.counts 1
