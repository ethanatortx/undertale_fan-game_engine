/// scr_draw_dialog_shake

arr_letters_pos = argument0;
font = argument1;

for (i = 0; i < array_height_2d(arr_letters_pos); i++) {
    draw_text(arr_letters_pos[i,1],arr_letters_pos[i,2],arr_letters_pos[i,0]);
}


