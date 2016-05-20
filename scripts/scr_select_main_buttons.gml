/// scr_select_main_buttons

current_button = argument0;

if (current_button != 3 && (keyboard_check_pressed(vk_right))) {
    global.buttonpos = current_button + 1;
    audio_play_sound(snd_menu_move,10,false);
}
if (current_button != 0 && (keyboard_check_pressed(vk_left))) {
    global.buttonpos = current_button - 1;
    audio_play_sound(snd_menu_move,10,false);
}

if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(snd_menu_select,10,false);
    if (global.buttonpos == 2 && scr_read_player_items() != undefined) { // doesn't let the player use the ITEMS button if they have no items to use
        inbox = 1;
        selected_item = 0;
        page_items = 0;
    } else if (global.buttonpos == 0 || global.buttonpos == 1) {
        inbox = 1;
        selected_item = 0;
    }
    alarm[0] = 5;
}

// calculate position to display based on which button is selected
if (global.buttonpos == 0) { // Fight
    return_position[0] = 42;
    return_position[1] = 436;
}
if (global.buttonpos == 1) { // Act
    return_position[0] = 190;
    return_position[1] = 436;
}
if (global.buttonpos == 2) { // Item
    return_position[0] = 350;
    return_position[1] = 436;
}
if (global.buttonpos == 3) { // Mercy
    return_position[0] = 510;
    return_position[1] = 436;
}

return return_position;
