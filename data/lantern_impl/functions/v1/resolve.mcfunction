# Enable forceloading (done in this way to allow embedders to delete the function)
execute if score lantern_impl lantern.versions matches 1 run function lantern_impl:v1/enable_forceload

# Run initialization if this is the highest lantern_impl version
execute if score lantern_impl lantern.versions matches 1 run function lantern_impl:v1/initialize

# Run the load delayer, doing nothing if this is the newest lantern_impl
schedule function lantern_impl:v1/forceload/delay 1
