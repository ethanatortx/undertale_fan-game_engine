/// scr_move_heart
starting_x = argument0;
starting_y = argument1;
current_x = argument2;
current_y = argument3;
button_x = 42;
button_y = 444;

if (current_x != button_x && current_y != button_y) {
    slope = (button_y - starting_y) / (button_x - starting_x);

    new_xpos = current_x - 1;
    new_ypos = current_y - slope;
} else if (current_x == button_x && current_y == button_y) {
    heart_flashing = -1;
    global.buttonpos = 0;
    current_x = button_x;
    current_y = button_y;
}
