/// scr_initialize_fight_variables

global.current_encounter = argument0;
global.monster_stats = scr_setup_monster_stats_2d_array(global.current_encounter);
global.monster_hp_pool = scr_calc_monster_hp_pool(monster_stats);
