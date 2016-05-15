/// scr_setup_monster_stats_2d_array

// argument0 = array containing all indexes of monsters to be in the fight
// returns 2d array; height = monsters indexed in repspective order to input; length = stats for each monster

monsters_array = argument0; // input array

for (monster_initialize = 0; monster_initialize < array_length_1d(monsters_array); monster_initialize += 1) { // loop through all monsters from input array
    monster_stats = script_execute(monsters_array[monster_initialize]); // return the stats for the current specified monster
    for (stats_amount = 0; stats_amount < array_length_1d(monster_stats); stats_amount += 1) { // loop through the returned stats
        temp_2d_array[monster_initialize,stats_amount] = monster_stats[stats_amount]; // put the stats into the length of the 2d array
    }
}

return temp_2d_array; // return the array
