/// scr_fight_state
scr_getinput();





//global.actnum = 3// remember to remove this later






// move between the four buttons
if (rightKey and global.buttonpos != 3 and obj_player_redheart.alarm[3] <= 0 && inbox == 0) { // get this working
    audio_play_sound(snd_menu_move,10,false);
    global.buttonpos += 1;
    obj_player_redheart.phy_position_x = buttonx[global.buttonpos] + 8;
    obj_player_redheart.alarm[3] = 5;
}

if (leftKey and global.buttonpos != 0 and obj_player_redheart.alarm[3] <= 0 && inbox == 0) {
    audio_play_sound(snd_menu_move,10,false);
    global.buttonpos -= 1;
    obj_player_redheart.phy_position_x = buttonx[global.buttonpos] + 8;
    obj_player_redheart.alarm[3] = 5;
}

if (keyboard_check_pressed(vk_enter) == true) { // if they choose a button
    if (inbox == 0) {
        if (obj_player_redheart.alarm[3] <= 0) { // select fight button
            obj_player_redheart.alarm[3] = 5; // coodown for selection
            // teleport player to first selection position inside box
            obj_player_redheart.phy_position_x = 71;    // x
            obj_player_redheart.phy_position_y = 285;   // y
            audio_play_sound(snd_menu_select,10,false);
            inbox = 1;
            selectpos = 1;
        }
    } else if (inbox == 1) {
        inbox = 2;
        selectedmonster = selectpos - 1;
    }
} else if (keyboard_check_pressed(ord("X"))) {
    if (inbox == 1) {
        if (obj_player_redheart.alarm[3] <= 0) { // select fight button
            obj_player_redheart.alarm[3] = 5; // coodown for selection
            obj_player_redheart.phy_position_x = buttonx[global.buttonpos]+8
            obj_player_redheart.phy_position_y = 444;
            inbox = 0;
        }
    } else if (inbox == 2) {
        inbox = 1;
    }
}
if (inbox == 1) { // selecting mob to FIGHT
    obj_player_redheart.drawnames = true;
    options = array_length_1d(global.monster);
    scr_moveindialog(options,selectpos);
    
} else if (inbox == 2) {
    if (global.buttonpos == 0 && obj_player_redheart.alarm[3] <= 0) {
            
        scr_attack();
        
    } else if (global.buttonpos == 1 && obj_player_redheart.alarm[3] <= 0) {
    
        selectnum = array_height_2d(global.monster[selectedmonster]);
        scr_moveindialog(selectnum,selectpos);
        
        
    } else if (global.buttonpos == 2 && obj_player_redheart.alarm[3] <= 0) {
        
        
    } else if (global.buttonpos == 3 && obj_player_redheart.alarm[3] <= 0) {
        scr_moveindialog(1,1);
        
    }
}
/*if (inbox == 2) { // FIGHTing
    obj_player_redheart.drawnames = true;
    
} else if (inbox == 3) { // Selecting option to act
    for (s = 0; s < 
    
} else if (inbox == 4) { // selecting item to use
    
} else if (inbox == 5) { // selecting mercy option
    
}*/
// select the current button

// select options w/in the button (teleported to dialog box)
