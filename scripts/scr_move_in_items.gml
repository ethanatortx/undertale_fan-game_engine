/// scr_move_in_items

num_of_items = array_length_1d(items_array);
if (num_of_items > 4) {
    num_of_pages = 2;
}

if (page_items == 2) {
    page_items = 0;
}
if (page_items == -1) {
    page_items = 1;
}

if (page_items = 0) {
    if (keyboard_check_pressed(vk_right)) {
        if (selected_item == 0) {
            selected_item += 1;
        } else if (selected_item == 1) {
            selected_item -= 1;
            page_items += 1;
        } else if (selected_item == 2) {
            selected_item += 1;
        } else if (selected_item == 3) {
            selected_item -= 1;
            page_items += 1;
        }
    }
    if (keyboard_check_pressed(vk_left)) {
        if (selected_item == 0) {
            selected_item += 1;
            page_items -= 1;
        } else if (selected_item == 1) {
            selected_item -= 1;
        } else if (selected_item == 2) {
            selected_item += 1;
            page_items -= 1;
        } else if (selected_item == 3) {
            selected_item -= 1;
        }
    }
} else if (page_items = 1) {
    if (keyboard_check_pressed(vk_right)) {
        if (selected_item == 0) {
            selected_item += 1;
        } else if (selected_item == 1) {
            selected_item -= 1;
            page_items += 1;
        } else if (selected_item == 2) {
            selected_item += 1;
        } else if (selected_item == 3) {
            selected_item -= 1;
            page_items += 1;
        }
    }
    if (keyboard_check_pressed(vk_left)) {
        if (selected_item == 0) {
            selected_item += 1;
            page_items -= 1;
        } else if (selected_item == 1) {
            selected_item -= 1;
        } else if (selected_item == 2) {
            selected_item += 1;
            page_items -= 1;
        } else if (selected_item == 3) {
            selected_item -= 1;
        }
    }
}
