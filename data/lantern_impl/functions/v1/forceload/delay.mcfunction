# Schedule this function to run again in an hour, thus causing it to be
# repeatedly delayed so long as the outdated Lantern data pack is loaded
execute unless score lantern lantern.versions matches 1 run schedule function #lantern_impl:v1/forceload/delay 72000

# Delay the forceload checker for an hour
execute unless score lantern_impl lantern.versions matches 1 run schedule function lantern_impl:v1/forceload/check 72000

# Delay the load hook for an hour
execute unless score lantern_impl lantern.versions matches 1 run schedule function #lantern_impl:v1/load 72000
