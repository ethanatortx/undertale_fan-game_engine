/// scr_move_in_items

items_array = scr_read_player_items();
num_of_items = array_length_1d(items_array);

if (!keyboard_check_pressed(ord("X"))) {
    if (num_of_items > 4) {
        num_of_pages = 2;
    }
    // takes care of carrying over the pages
    if (page_items == 2) { // from second page right to first
        page_items = 0;
    }
    if (page_items == -1) { // from first page left to second
        page_items = 1;
    }
    
    if (page_items = 0) { // first page of items
        if (keyboard_check_pressed(vk_right)) {
            if (selected_item == 0 && selected_item + 1 < num_of_items) {
                selected_item += 1;
                item_index_for_use += 1;
            } else if (selected_item == 1 && selected_item + 1 < num_of_items) {
                selected_item -= 1;
                item_index_for_use -= 1;
                if (global.player_item_count > 3) { // only moves to next page if there are enough items to fill it
                    page_items += 1;
                }
            } else if (selected_item == 2 && selected_item + 1 < num_of_items) {
                selected_item += 1;
                item_index_for_use += 1;
            } else if (selected_item == 3 && selected_item + 1 < num_of_items) {
                selected_item -= 1;
                item_index_for_use -= 1;
                if (global.player_item_count > 3) { // only moves to next page if there are enough items to fill it
                    page_items += 1;
                }
            }
        }
        if (keyboard_check_pressed(vk_left)) {
            if (selected_item == 0 && selected_item + 1 < num_of_items) {
                selected_item += 1;
                item_index_for_use += 1;
                if (global.player_item_count > 3) { // only moves to next page if there are enough items to fill it
                    page_items -= 1;
                }
            } else if (selected_item == 1 && selected_item + 1 < num_of_items) {
                selected_item -= 1;
                item_index_for_use -= 1;
            } else if (selected_item == 2 && selected_item + 1 < num_of_items) {
                selected_item += 1;
                item_index_for_use += 1;
                if (global.player_item_count > 3) { // only moves to next page if there are enough items to fill it
                    page_items -= 1;
                }
            } else if (selected_item == 3 && selected_item + 1 < num_of_items) {
                selected_item -= 1;
                item_index_for_use -= 1;
            }
        }
    } else if (page_items = 1) {
        if (keyboard_check_pressed(vk_right)) {
            if (selected_item == 0 && selected_item + 5 < num_of_items) {
                selected_item += 1;
                item_index_for_use += 1;
            } else if (selected_item == 1 && selected_item + 5 < num_of_items) {
                selected_item -= 1;
                page_items += 1;
                item_index_for_use -= 1;
            } else if (selected_item == 2 && selected_item + 5 < num_of_items) {
                selected_item += 1;
                item_index_for_use += 1;
            } else if (selected_item == 3 && selected_item + 5 < num_of_items) {
                selected_item -= 1;
                page_items += 1;
                item_index_for_use -= 1;
            }
        }
        if (keyboard_check_pressed(vk_left)) {
            if (selected_item == 0 && selected_item + 5 < num_of_items) {
                selected_item += 1;
                page_items -= 1;
                item_index_for_use = 4;
            } else if (selected_item == 1 && selected_item + 5 < num_of_items) {
                selected_item -= 1;
                item_index_for_use = 5;
            } else if (selected_item == 2 && selected_item + 5 < num_of_items) {
                selected_item += 1;
                page_items -= 1;
                item_index_for_use = 6;
            } else if (selected_item == 3 && selected_item + 5 < num_of_items) {
                selected_item -= 1;
                item_index_for_use = 7;
            }
        }
    }
    if (keyboard_check_pressed(vk_enter) && alarm[0] <= 0) {
        use_message = scr_use_item(item_index_for_use);
        inbox = 2;
        alarm[0] = 5;
    }
} else if (keyboard_check_pressed(ord("X"))) {
    inbox = 0;
}

