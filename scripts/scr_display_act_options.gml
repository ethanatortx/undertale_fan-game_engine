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
if ((keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) && alarm[0] <= 0) {
    act_detail = monster_act_options[selected_item,1]
    if (selected_item == 0) {
        enemy_atk = global.monster_stats[monster_index,2];
        enemy_def = global.monster_stats[monster_index,3];
        checktxt = monster_act_options[0,1];
        act_detail = scr_check(enemy_atk,enemy_def,checktxt,global.monster_stats[monster_index,0]);
    }
    if (selected_item == 1) {
        act_detail = monster_act_options[1,1];
    }
    if (selected_item == 2) {
        act_detail = monster_act_options[2,1];
    }
    if (selected_item == 3) {
        act_detail = monster_act_options[3,1];
    }
    
    audio_play_sound(snd_menu_select,10,false);
    act_detail = scr_pp_dialog_shake(fnt_main,act_detail,536,32);
    scr_setup_dialog_oneline_shake(act_detail,64,276,0.75,snd_narrator_talking,1,1,1,0.5,fnt_main);
    inbox = 3;
    alarm[0] = 5;
}
if ((keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_lshift)) && alarm[0] <= 0) {
    inbox = 1;
    alarm[0] = 5;
}
