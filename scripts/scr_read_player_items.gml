/// scr_read_player_items
// used globals: player_item_count(int) and player_items(array)
// returns array holding actual player items in order

global.player_item_count = -1; // re-initialize the player's item count
real_items = undefined;

for (i = 0; i < array_length_1d(global.player_items); i += 1) { // iterate throught the player item array
    if (global.player_items[i] != undefined) { // if item slot is not empty
        global.player_item_count += 1; // add 1 to the count of actual items
        real_items[global.player_item_count] = global.player_items[i]; // add the item to the actual items array
    }
}
global.player_items = real_items;
return real_items;
