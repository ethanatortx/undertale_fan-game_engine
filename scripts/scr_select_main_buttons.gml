/// scr_select_main_buttons

current_button = argument0;

if (current_button != 3 && (keyboard_check_pressed(vk_right))) {
    global.buttonpos = current_button + 1;
}
if (current_button != 0 && (keyboard_check_pressed(vk_left))) {
    global.buttonpos = current_button - 1;
}

if (keyboard_check_pressed(vk_enter)) {
    inbox = 1;
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
