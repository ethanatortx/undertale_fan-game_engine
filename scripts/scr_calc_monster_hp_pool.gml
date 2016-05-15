/// scr_calc_monster_hp_pool

temp_hp_pool = 0;

for (hp_count = 0; hp_count < array_height_2d(argument0); hp_count += 1) {
    temp_hp_pool += argument0[hp_count,1];
}

return temp_hp_pool;
