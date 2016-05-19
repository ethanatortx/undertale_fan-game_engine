/// scr_use_item
index_in_player_items = argument0; // the index (0-7) is input for returning item name from global.player_items
item_name = global.player_items[index_in_player_items]; // get the item's name
item_use_index = asset_get_index("item_" + item_name + "_use"); // get the use script index
global.player_items[index_in_player_items] = undefined; // set the used spot to empty
use_message = script_execute(item_use_index); // run the item useage script
return use_message
