/// scr_move_heart
starting_x = argument0;
starting_y = argument1;
current_x = argument2;
current_y = argument3;
button_x = 42;
button_y = 436;

distance_to = point_distance(starting_x,starting_y,button_x,button_y);
direction_to = point_direction(starting_x,starting_y,button_x,button_y);

y_distance = button_y - starting_y;
x_distance = button_x - starting_x;

if (current_x != button_x && heart_flashing == 0) {
    xspeed = x_distance / (room_speed * 1);
    newpos[0] = current_x + xspeed;
} else {
    current_x = button_x;
    heart_flashing = -1;
    global.buttonpos = 0;
    newpos[0] = current_x;
}
if (current_y != button_y && heart_flashing == 0) {
    yspeed = y_distance / (room_speed * 1);
    newpos[1] = current_y + yspeed;
} else {
    current_y = button_y;
    heart_flashing = -1;
    global.buttonpos = 0;
    newpos[1] = current_y;
}




move_speed = distance_to / room_speed;

return newpos;

