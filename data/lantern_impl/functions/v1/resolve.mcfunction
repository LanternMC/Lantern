# Run initialization if this is the highest lantern_impl version
execute if score lantern_impl lantern.versions matches 1 run function lantern_impl:v1/initialize
