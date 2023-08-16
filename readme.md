# SoMC: Social Minecraft Resource Pack

This is the resource pack for SoMC Minecraft Community. Checkout the [SoMC Website](https://somc.club) to learn more about the community.

The server includes the [Custom Roleplay Data Datapack](https://www.curseforge.com/minecraft/customization/custom-roleplay-data-datapack) allowing players to change the texture (appreance) of an item in game by holding it in their hand an running: `/trigger CustomModelData set 1` . Where **1** could be replaced with a different id value based on the texture wanted.

# Adding an item to the resource pack.

Please add to orginal source (blockbench, photoshop, etc) into the source directory to allow others to build off the item in the future.

## Add the textures for a model

1. Create a folder for your texture(s) under **assets/minecraft/textures/item**. The folder name should be in lower case and include no spaces or special characters.
2. Within the folder place any textures your item uses.
3. Double check the name for the textures are in lowercase, have no spaces, and use no special characters.

## Add the model 

1.  Now navigate to **assets/minecraft/models**.
2. Within this folder place the .json model data for the item. The name should be lowercase, with no spaces, and no special characters. The name of the item should match the name of the folder used for the texture.

## Add the model to an in-game item

Most Custom items in game tend to be a minecraft stick for handheld object, or a carved pumpkin for an object that you where on your head. If it is not one of these two common items, you will need to pull the source minecraft file for the asset and then edit it looking at one of the others as an example.

1. Open the minecraft item you would like to change the apperance of in the **assets/minecraft/models/item** folder. Generally: stick.json or carved_pumpkin.json.
2. Under the overrides section add a line for your new custom data that looks like `{"predicate": {"custom_model_data": 3}, "model": "item/your_item_name_here"}`. You will need to replace the **3** with a number that does not already exist in the list as this will also be the value used in game to set the default item to your item. You will also need to change the **you_item_name_here** to be the name used for your item in this folder.
3. Ensure that all lines except for the final line in the overrides list includes a **,**.

## Test the resource pack.

If you have not clone this repo into you resources folder for minecraft, I advise moving it there first.

1. Launch the game
2. Enter a local/singleplayer testing world.
3. From the in-game menu, select resource packs and move the SoMC resource pack from the available ones into the active list and put it at the top.
4. Give yourself the item in game `\give @s minecraft:stick{CustomModelData:1}` where the **1** is the value of the custom model data set in the previous section.

If everything worked you should now have your item.

# Building the Bundle

To build the bundle just run the **bundle.sh**. The update the server properities for the server to link to the zip file and have the hash value for the zip. 
