/// scr_display_act_options

selected_item = scr_select_act(array_height_2d(monster_act_options));
monster_index = argument0;

monster_act_options = script_execute(global.monster_stats[monster_index,6]);

for (i = 0; i < array_height_2d(monster_act_options); i++) {
    if (i == 0) {
        
        draw_text(64,270,"*");
        draw_text(96,270,"Check");
    }
    if (i == 1) {
        
    }
    if (i == 2) {
    
    }
    if (i == 3) {
    
    }
}

if (keyboard_check_pressed(vk_enter) && alarm[0] <= 0) {
    if (selected_item == 0) {
        enemy_atk = global.monster_stats[monster_index,2];
        enemy_def = global.monster_stats[monster_index,3];
        checktext = monster_act_options[0,1];
        act_detail = scr_check();
    }
    if (selected_item == 1) {
    
    }
    if (selected_item == 2) {
    
    }
    if (selected_item == 3) {
    
    }
    inbox = 3;
}

