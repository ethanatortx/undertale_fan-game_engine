
/// scr_moveinfightbox    

selectnum = argument0
selectpos = argument1

if ((rightKey)==true && obj_player_redheart.alarm[3] <= 0) { // select options on right of box
    if ( selectpos == 1) {
        if ( selectnum >= 1) {
            obj_player_redheart.phy_position_x = 332;
            selectpos = 2;
            obj_player_redheart.alarm[3] = 5;
        }
    } else if ( selectpos == 3) {
        if ( selectnum == 3) {
            obj_player_redheart.phy_position_x = 332;
            selectpos = 4;
            obj_player_redheart.alarm[3] = 5;
        }
    }        
}
if ((leftKey)==true && obj_player_redheart.alarm[3] <= 0) { // select options on left of box
    if ( selectpos == 2) {
        if ( selectnum >= 0) {
            obj_player_redheart.phy_position_x = 71;
            selectpos = 1;
            obj_player_redheart.alarm[3] = 5;
        }
    } else if ( selectpos == 4) {
        if ( selectnum >= 2) {
            obj_player_redheart.phy_position_x = 71;
            selectpos = 3;
            obj_player_redheart.alarm[3] = 5;
        }
    }
}
if ((downKey)==true && obj_player_redheart.alarm[3] <= 0) { // options on top of box
    if ( selectpos == 1) {
        if ( selectnum >= 2) {
            obj_player_redheart.phy_position_y = 318;
            selectpos = 3;
            obj_player_redheart.alarm[3] = 5;
        }
    } else if ( selectpos == 2) {
        if ( selectnum == 3) {
            obj_player_redheart.phy_position_y = 318;
            selectpos = 4;
            obj_player_redheart.alarm[3] = 5;
        }
    }
}
if ((upKey)==true && obj_player_redheart.alarm[3] <= 0) { // options on bottom of box
    if ( selectpos == 3) {
        if ( selectnum >= 0) {
            obj_player_redheart.phy_position_y = 285;
            selectpos = 1;
            obj_player_redheart.alarm[3] = 5;
        }
    } else if ( selectpos == 4) {
        if ( selectnum >= 1) {
            obj_player_redheart.phy_position_y = 285;
            selectpos = 2;
            obj_player_redheart.alarm[3] = 5;
        }
    }
}
