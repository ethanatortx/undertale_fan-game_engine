/// scr_move_in_reset_room
soulless = argument0;

if (!soulless) {
    with (obj_resetroom_select) {
        sprite_to_draw = spr_redheart;
    }
} else {
    with (obj_resetroom_select) {
        sprite_to_draw = spr_redheart;
    }
}

if (global.buttonpos == 0) {
    if (keyboard_check_pressed(vk_right) == 1) {
        global.buttonpos = 1;
    } else if (keyboard_check_pressed(vk_left) == -1) {
        global.buttonpos = 1;
    }
} else if (global.buttonpos == 1) {
    if (keyboard_check_pressed(vk_enter)) {
        time_to_reset = true;
    }
    if (keyboard_check_pressed(vk_right) == 1) {
        global.buttonpos = 0;
    } else if (keyboard_check_pressed(vk_left) == 1) {
        global.buttonpos = 0;
    }
}
