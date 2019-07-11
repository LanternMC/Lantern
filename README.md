# Lantern

Lantern is a data pack library that provides forceloaded chunks and slightly
adjusts the data pack loading process. Lantern provides a very small API--the
bare minimum required to use the forceloaded chunks effectively.

To learn how to use and package Lantern with your own data pack, refer to the
[documentation].

## Features

Lantern offers the following features:

 - Load hooks that allow your data pack to verify the version of Lantern or other dependencies. 
 - Various scoreboard objectives used to hold global variables and data pack metadata.
 - A forceloaded chunk in each dimension, each containing a lectern, sign, and shulker box.
 - A permanent armor stand entity useful for computational loot tables and other calculations.
 - (Disableable) Per-dimension tick hooks required for certain entity-related operations.

Additionally, Lantern is built such that multiple versions of the library may
be loaded at once without causing runtime issues. This mean that it is
completely safe to include Lantern *inside* of your data pack, and for reasons
expanded upon in the documentation, this is highly encouraged.

## License

Lantern is licensed under the [MIT license].

### Contribution

Unless you explicitly state otherwise, any contributions intentionally submitted
for inclusion in Lantern by you shall be licensed as MIT, without any additional
terms or conditions.

[documentation]: https://lanternmc.com/docs/
[MIT license]: https://github.com/lanternmc/lantern/blob/master/LICENSE
