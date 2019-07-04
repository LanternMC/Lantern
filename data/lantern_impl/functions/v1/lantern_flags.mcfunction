# If lantern_impl version is 1, and the dimension tag flag is enabled,
# initialize the dimension tag command blocks
execute if score lantern_impl lantern.versions matches 1 if score lantern.dimension_tags lantern.flags matches 1 run function lantern_impl:v1/utilities/initialize_dimension_tags
