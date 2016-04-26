/// scr_encountertransition
if (encounter_transition = true) {
    // actual draw events take place in draw gui of obj_player_redheart
    
    
    if (global.buttonpos == 0) {
        encounter_full = true;
    } else {
        if (global.buttonpos == 4) {
            state = scr_movetobuttons;
        }
        if (startx == 0 and starty == 0) {
            startx = obj_player_redheart.phy_position_x;
            starty = obj_player_redheart.phy_position_y;
        }
    } 
}
