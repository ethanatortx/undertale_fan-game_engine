/// scr_display_act_options


monster_index = argument0;
monster_act_options = script_execute(global.monster_stats[monster_index,6]);
selected_item = scr_select_act(array_height_2d(monster_act_options));
draw_set_font(fnt_main);
draw_set_alpha(1);
draw_set_color(c_white);

if (selected_item == 0) {
    draw_sprite(spr_redheart,0,71,285);
} else if (selected_item == 1) {
    draw_sprite(spr_redheart,0,332,285);
} else if (selected_item == 2) {
    draw_sprite(spr_redheart,0,71,318);
} else if (selected_item == 3) {
    draw_sprite(spr_redheart,0,332,318);
}

for (act_draw_num = 0; act_draw_num < array_height_2d(monster_act_options); act_draw_num++) {
    if (act_draw_num == 0) {
        draw_text(104,276,"*");
        scr_setup_dialog_oneline_shake(monster_act_options[0,0],120,276,0.75,snd_silent,3,1,1,0.5,fnt_main);
        scr_shake_instant(monster_act_options[0,0]);
        scr_draw_dialog_shake(arr_letters_pos,fnt_main);
    }
    if (act_draw_num == 1) {   
        draw_text(364,276,"*");
        scr_setup_dialog_oneline_shake(monster_act_options[1,0],380,276,0.75,snd_silent,3,1,1,0.5,fnt_main);
        scr_shake_instant(monster_act_options[1,0]);
        scr_draw_dialog_shake(arr_letters_pos,fnt_main);
    }
    if (act_draw_num == 2) {
        draw_text(104,306,"*");
        scr_setup_dialog_oneline_shake(monster_act_options[2,0],120,306,0.75,snd_silent,3,1,1,0.5,fnt_main);
        scr_shake_instant(monster_act_options[2,0]);
        scr_draw_dialog_shake(arr_letters_pos,fnt_main);
    }
    if (act_draw_num == 3) {    
        draw_text(364,306,"*");
        scr_setup_dialog_oneline_shake(monster_act_options[3,0],380,306,0.75,snd_silent,3,1,1,0.5,fnt_main);
        scr_shake_instant(monster_act_options[3,0]);
        scr_draw_dialog_shake(arr_letters_pos,fnt_main);
    }
}
