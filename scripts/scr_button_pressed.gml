/// scr_button_pressed
if (inbox == 1) {
    if (global.buttonpos == 0) {
        scr_display_monster_names();
    }
    if (global.buttonpos == 1) {
        scr_display_monster_names();
    }
    if (global.buttonpos == 2) {
        scr_display_items();
    }
    if (global.buttonpos == 3) {
        scr_display_mercy();
    }
}
if (inbox == 2) {
    if (global.buttonpos == 0) {
    }
    if (global.buttonpos == 1) {
        scr_display_act_options(selected_item,actual_index);
    }
}
