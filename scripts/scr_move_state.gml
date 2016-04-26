/// scr_move_state

//todo : fix weird movement glitch when pushing right or left against a horizontal wall

// sets up input for movement
scr_getinput();

hspd = 0;
vspd = 0;

xaxis = 0;
yaxis = 0;

//get player directional movement:
// right
if (rightKey) {
    xright = 1;
} else {
    xright = 0;
}
// left
if (leftKey) {
    xleft= -1;
} else {
    xleft = 0;
}
// down
if (downKey) {
    ydown = 1;
} else {
    ydown = 0;
}
// up
if (upKey) {
    yup = -1;
} else {
    yup = 0;
}

//asign directional movement to an axis
xaxis = xright + xleft;
yaxis = ydown + yup;

if (xaxis == 0 && yaxis == 0) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = .2;
}

//actually move the player
phy_position_x += xaxis*spd;
phy_position_y += yaxis*spd;

// detect wich direction to animate (right/left/down/up)
if (phy_position_y != phy_position_yprevious) {
    if (yaxis == 1) {
        sprite_index = spr_main_down;
    } else if (yaxis == -1) {
        sprite_index = spr_main_up;
    }
}

if (phy_position_x != phy_position_xprevious) {
    if (xaxis == 1) {
        sprite_index = spr_main_right;
    } else if (xaxis == -1) {
        sprite_index = spr_main_left;
    }
}
