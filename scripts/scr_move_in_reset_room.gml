/// scr_move_in_reset_room
soulless = argument0;

movement_string = string(scr_getinput());
movement_left = real(string_char_at(movement_string,0));
movement_right = real(string_char_at(movement_string,1));

if (!soulless) {
    with (obj_resetroom_select) {
        sprite_index = spr_redheart;
    }
} else {
    with (obj_resetroom_select) {
        sprite_index = spr_nothing;
    }
}

if (global.buttonpos == 0) {



    if ((movement_left - movement_right) == 1) {
        global.buttonpos = 1;
    } else if ((movement_left - movement_right) == -1) {
        global.buttonpos = 1;
    }
} else if (global.buttonpos == 1) {
    if ((movement_left - movement_right) == 1) {
        global.buttonpos = 0;
    } else if ((movement_left - movement_right) == 1) {
        global.buttonpos = 0;
    }
}
