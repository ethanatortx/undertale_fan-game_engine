/// scr_select_names
num_move_between = argument0; // how many items can be moved between
current_position = argument1;

if (num_move_between == 0) {
    if (keyboard_check_pressed(vk_enter)) {
        inbox = 2;
    }
}
