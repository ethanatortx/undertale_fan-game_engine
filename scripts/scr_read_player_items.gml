/// scr_read_player_items
// used globals: player_item_count(int) and player_items(array)
// returns array holding actual player items in order

global.player_item_count = 0; // re-initialize the player's item count
var real_items; // local variable to store actual player items for return at end

for (i = 0; i < array_length_1d(global.player_items); i += 1) { // iterate throught the player item array
    if (global.player_items[k] != undefined) { // if item slot is not empty
        real_items[global.player_item_count] = global.player_items[k]; // add the item to the actual items array
        global.player_item_count += 1; // add 1 to the count of actual items
    }
}

return real_items; // return the array of the actual items in the player's inventory;
