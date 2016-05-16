/// scr_get_monster_names

// argument0 should be global.current_encounter btw

monster_stats = scr_setup_monster_stats_2d_array(argument0);

for (arr_height = 0; arr_height < array_height_2d(monster_stats); arr_height += 1) {
    temp_name_array[arr_height] = monster_stats[arr_height,0];
}

return temp_name_array;
