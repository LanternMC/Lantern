# Run initialization if this is the highest lantern_impl version
execute if score lantern_impl lantern.versions matches 3 run function lantern_impl:v3/initialize
