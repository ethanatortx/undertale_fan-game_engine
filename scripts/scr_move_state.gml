/// scr_move_state

//todo : fix weird movement glitch when pushing right or left against a horizontal wall

// sets up input for movement
keys_pressed = scr_getinput();

//sets speed for movement in each direction
spd_arr = scr_move_arr(keys_pressed, spd);

if (spd_arr[0] == 0 && spd_arr[1] == 0) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = .1;
}

//actually move the player
/*phy_speed_x = spd_arr[0];
phy_speed_y = spd_arr[1];*/

phy_position_x += spd_arr[0];
phy_position_y += spd_arr[1];

// detect wich direction to animate (right/left/down/up)
if (phy_position_y != phy_position_yprevious) {
    if (phy_position_y < phy_position_yprevious) {
        sprite_index = spr_main_down;
    } else if (phy_position_y > phy_position_yprevious) {
        sprite_index = spr_main_up;
    }
}

if (phy_position_x != phy_position_xprevious) {
    if (phy_position_x > phy_position_xprevious) {
        sprite_index = spr_main_right;
    } else if (phy_position_x < phy_position_xprevious) {
        sprite_index = spr_main_left;
    }
}
