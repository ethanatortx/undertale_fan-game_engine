/// scr_select_names

act_total = argument0;

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
    if (act_total == 3 || act_total == 2) {
        if (selected_item == 0) {
            selected_item = 1;
        } else if (selected_item == 1) {
            selected_item = 0;
        }
    }
    if (act_total == 4) {
        if (selected_item == 0) {
            selected_item = 1;
        } else if (selected_item == 1) {
            selected_item = 0;
        } else if (selected_item == 2) {
            selected_item = 3;
        } else if (selected_item == 3) {
            selected_item = 2;
        }
    }
}
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) {
    if (act_total == 3) {
        if (selected_item == 0) {
            selected_item = 2;
        } else if (selected_item == 2) {
            selected_item = 0;
        }
    }
    if (act_total == 4) {
        if (selected_item == 0) {
            selected_item = 2;
        } else if (selected_item == 1) {
            selected_item = 3;
        } else if (selected_item == 2) {
            selected_item = 0;
        } else if (selected_item == 3) {
            selected_item = 1;
        }
    }
}

return selected_item;
