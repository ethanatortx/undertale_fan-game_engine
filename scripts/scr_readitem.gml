/// scr_readitem

itemreq = argument0; // record the requested item in an easier to remember variable name
itemstxt = file_text_open_read(working_directory + "\items.txt"); // open the items.txt file (holds stats for all items in game)
currentline = "" // initialize currentline var

while (currentline != "fileend") { // the program stops searching once it gets to the line I have defined as the 'last' one (the one that has "fileend" on it)
    if (currentline == itemreq) {
        itemtype = file_text_read_string(itemstxt); // get the item's type so the script can accurately read it's stats and not break horribly
        itemdesc = file_text_read_string(itemstxt); // description for the item when it is inspected in the player's inventory menu
        if (itemtype == "weapon") {
            global.attack = file_text_read_real(itemstxt); // set player attack value to new weapon attack
            num_of_bars = file_text_read_real(itemstxt); // how many bars are created when the player attacks with this weapon equipped
            bar_type = file_text_read_string(itemstxt); // which bar type is created of this attack type
            bonus_effect = file_text_read_string(itemstxt); // what special effect (if any) does this have on the player
            cost_buy = file_text_read_real(itemstxt); // cost to buy (usually this won't apply as most weapons are found, not bought)
            cost_sell = file_text_read_real(itemstxt); // cost to sell
            
            file_text_close(itemstxt);
            exit;
            
        } else if (itemtype == "armor") {
            global.defense = file_text_read_real(itemstxt); // set player defense value to the new armor's defense
            bonus_effect = file_text_read_string(itemstxt); // what special effect on the player does this armor have while they are wearing it (if any)
            cost_buy = file_text_read_real(itemstxt); // cost to buy (usually this won't apply as most weapons are found, not bought)
            cost_sell = file_text_read_real(itemstxt); // cost to sell
            
            file_text_close(itemstxt);
            exit;
            
        } else if (itemtype == "heal") {
            heal_amount = file_text_read_real(itemstxt); // how much does this heal the player (affects built-in variable 'health')
            bonus_effect = file_text_read_string(itemstxt); // what special effect does this have on the player when it is consumed (if any)
            use_sound = file_text_read_string(itemstxt); // the special use sound to play when food is consumed (if no special sound, returns "default" from the file)
            cost_buy = file_text_read_real(itemstxt); // cost to buy
            cost_sell = file_text_read_real(itemstxt); // cost to sell
            
            file_text_close(itemstxt);
            exit;
        }
    }
    currentline = string(file_text_readln(itemstxt)); // set the program to check the next line after this one for the specified item's stats section
}

file_text_close(itemstxt);  // if none of the above is found, then close the file...
exit;                       // ...and exit the script
