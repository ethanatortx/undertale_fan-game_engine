/// scr_move_choose_name
player_input = scr_getinput()

selected_button = argument0;

for (l = 0; l < array_height_2d(array_letters); l += 1) {
    if (array_letters[l,0] == selected_button) {
        current_char = l;
    } else if (selected_button == "Quit") {
        current_char = 52;
    } else if (selected_button == "Backspace") {
        current_char = 53;
    } else if (selected_button == "Done") {
        current_char = 54;
    }
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) {
    if (current_char <= 51) {
        if (string_length(global.playername) < character_limit) {
            global.playername = global.playername + array_letters[current_char,0];
        }
    } else if (current_char == 52) {
        game_end();
    } else if (current_char == 53) {
        if (string_length(global.playername) != 0) {
            global.playername = string_copy(global.playername,1,string_length(global.playername) - 1);
        }
    } else if (current_char == 54) {
        room_goto(rm_name_confirmation);
    }
}
if (keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_lshift)) {
    if (string_length(global.playername) != 0) {
        global.playername = string_copy(global.playername,1,string_length(global.playername) - 1);
    }
}
if (keyboard_check_pressed(vk_left) && current_char != 0) {
    current_char -= 1;
}
if (keyboard_check_pressed(vk_right) && current_char != 54) {
    current_char += 1;
}
if (keyboard_check_pressed(vk_up) && current_char > 6) {
    if (current_char == 54 || current_char == 53 || current_char == 52) {
        current_char = 51;
    } else if (current_char > 25 && current_char <= 30) {
        current_char -= 5;
    } else if (current_char > 30 && current_char <= 32) {
        current_char -= 12;
    } else {
        current_char -= 7;
    }
}
if (keyboard_check_pressed(vk_down) && current_char < 52) {
    if (current_char + 7 > 51) {
        current_char = 53;
    } else if (current_char <= 25 && current_char > 20) {
        current_char += 5;
    } else if (current_char <= 20 && current_char > 18) {
        current_char += 12;
    } else {
        current_char += 7;
    }
}

if (current_char < 52) {
    selected_button = array_letters[current_char,0];
} else if (current_char == 52) {
    selected_button = "Quit";
} else if (current_char == 53) {
    selected_button = "Backspace";
} else if (current_char == 54) {
    selected_button = "Done";
}
