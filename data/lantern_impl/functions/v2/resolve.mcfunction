# Run initialization if this is the highest lantern_impl version
execute if score lantern_impl lantern.versions matches 2 run function lantern_impl:v2/initialize
