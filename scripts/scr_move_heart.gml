/// scr_move_heart
// starting pos for calculating move speed
starting_x = argument0; // x
starting_y = argument1; // y
// current position of heart to modify
current_x = argument2; // x
current_y = argument3; // y
// end position heart moves towards
button_x = 42;  // x
button_y = 436; // y

// difference in values between starting pos and button pos
y_distance = button_y - starting_y; // x
x_distance = button_x - starting_x; // y

// checks to see if the x position is equal to the target x position
if ((current_x < (button_x - 3) || current_x > (button_x + 3))  && heart_flashing == 0) {
    xspeed = x_distance / (15); // distribute the x movement over the frames so it takes one second
    current_x = current_x + xspeed; // increase the x coord based on speed
    newpos[0] = current_x; // set the x return value
} else {
    current_x = button_x; // set the x to equal the button position to center it
    heart_flashing = -1; // set the next fight stage (no drawing flashing or movement to buttons)
    global.buttonpos = 0; // set buttonpos to the FIGHT button value
    newpos[0] = current_x; // set the x return value
}
// checks to see if the y position is equal to the target y position
if ((current_y < (button_y - 3) || current_y > (button_y + 3)) && heart_flashing == 0) {
    yspeed = y_distance / (15); // distribute y movement over the frames so the move takes one second
    current_y = current_y + yspeed; // increase the y coord based on speed
    newpos[1] = current_y; // set the y return value
} else {
    current_y = button_y; // set the y to equal the button position to center it
    heart_flashing = -1; // set the next fight stage (no drawing flashing or movement to buttons)
    global.buttonpos = 0; // set buttonpos to the FIGHT button value
    newpos[1] = current_y; // set the y return value
}

return newpos; // return the position values in an array

