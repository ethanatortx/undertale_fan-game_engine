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

if ((keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) && alarm[0] <= 0) {

}
if ((keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_lshift)) && alarm[0] <= 0) {

}

return selected_index;
