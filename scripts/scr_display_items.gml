/// scr_display_items

items_array = scr_read_player_items();

if (global.player_item_count == -1) {
    inbox = 0;
} else {
    scr_move_in_items();
    if (selected_item == 0) {
        draw_sprite(spr_redheart,0,71,285);
    } else if (selected_item == 1) {
        draw_sprite(spr_redheart,0,332,285);
    } else if (selected_item == 2) {
        draw_sprite(spr_redheart,0,71,318);
    } else if (selected_item == 3) {
        draw_sprite(spr_redheart,0,332,318);
    }
    draw_set_font(fnt_main);
    draw_set_alpha(1);
    draw_set_color(c_white);
    if (page_items == 0) {
        for (arr_items = 0; arr_items <= global.player_item_count; arr_items += 1) {
            if (arr_items == 0) {
                draw_text(104,276,"*") // draw an asterisk before the item
                draw_text(136,276,global.player_items[arr_items]); // draw the item
            } else if (arr_items == 1) {
                draw_text(364,276,"*") // draw an asterisk before the item
                draw_text(396,276,global.player_items[arr_items]); // draw the item
            } else if (arr_items == 2) {
                draw_text(104,306,"*") // draw an asterisk before the item
                draw_text(136,306,global.player_items[arr_items]); // draw the item
            } else if (arr_items == 3) {
                draw_text(364,306,"*") // draw an asterisk before the item
                draw_text(396,306,global.player_items[arr_items]); // draw the item
            }
        }
    } else if (page_items == 1 && global.player_item_count > 3) {
        for (arr_items = 4; arr_items <= global.player_item_count + 4; arr_items += 1) {
            if (arr_items == 4) {
                draw_text(104,276,"*") // draw an asterisk before the item
                draw_text(136,276,global.player_items[arr_items]); // draw the item
            } else if (arr_items == 5) {
                draw_text(364,276,"*") // draw an asterisk before the item
                draw_text(396,276,global.player_items[arr_items]); // draw the item
            } else if (arr_items == 6) {
                draw_text(104,306,"*") // draw an asterisk before the item
                draw_text(136,306,global.player_items[arr_items]); // draw the item
            } else if (arr_items == 7) {
                draw_text(364,306,"*") // draw an asterisk before the item
                draw_text(396,306,global.player_items[arr_items]); // draw the item
            }
        }
    }
    if (keyboard_check_pressed(vk_enter) && alarm[0] <= 0) {
        use_message = scr_use_item(item_index_for_use);
        use_message = scr_pp_dialog(fnt_main,use_message,520,32);
        scr_setup_dialog_oneline_shake(use_message,64,274,0.75,snd_silent,1,1,1,1,fnt_main);
        inbox = 2;
        alarm[0] = 5;
    }
}
