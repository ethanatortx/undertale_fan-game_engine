/// scr_select_names
monster_total_current = 0;
for (i = 0; i < array_height_2d(global.monster_stats); i++) {
    if (global.monster_stats[i,1] > 0) {
        monster_total_current += 1
        arr_correspond[i] = 1;
    } else if (global.monster_stats[i,1] <= 0) {
        arr_correspond[i] = 0;
    }
}

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
    if (monster_total_current == 3 || monster_total_current == 2) {
        if (selected_item == 0) {
            selected_item = 1;
        } else if (selected_item == 1) {
            selected_item = 0;
        }
    }
    if (monster_total_current == 4) {
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
    if (monster_total_current == 3) {
        if (selected_item == 0) {
            selected_item = 2;
        } else if (selected_item == 2) {
            selected_item = 0;
        }
    }
    if (monster_total_current == 4) {
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
    inbox = 2;
    alarm[0] = 5;
}
if ((keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_lshift)) && alarm[0] <= 0) {
    inbox = 0;
    alarm[0] = 5;
}

for_index = selected_item;
for (k = 0; k < array_length_1d(arr_correspond); k++) {
    if (arr_correspond[k] = 1) {
        for_index -= 1;
    }
    if (for_index <= 0) {
        actual_index = k;
    }
}

temp[0] = selected_item;
temp[1] = actual_index;

return temp;
