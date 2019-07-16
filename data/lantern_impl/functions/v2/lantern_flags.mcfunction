# If lantern_impl version is 2, and the dimension tag flag is enabled,
# initialize the dimension tag command blocks
execute if score lantern_impl lantern.versions matches 2 if score lantern.dimension_tags lantern.flags matches 1 run function lantern_impl:v2/utilities/initialize_dimension_tags
