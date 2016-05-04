/// scr_fight_state
scr_getinput();

// move between the four buttons
if ((rightKey) and global.buttonpos != 3 and obj_player_redheart.alarm[3] <= 0 && inbox == 0) { // if the player selector is not on the far right button, then move it right one button
    audio_play_sound(snd_menu_move,10,false); // play the menu move sound
    global.buttonpos += 1; // change the buttonpos to reflect the selector (redheart) button position
    obj_player_redheart.phy_position_x = buttonx[global.buttonpos] + 10; // move the heart to the next button to the right
    obj_player_redheart.phy_position_y = 444;
    obj_player_redheart.alarm[3] = 5; // set the cooldown for interacting with a button
}

if (leftKey and global.buttonpos != 0 and obj_player_redheart.alarm[3] <= 0 && inbox == 0) {
    audio_play_sound(snd_menu_move,10,false);
    global.buttonpos -= 1;
    obj_player_redheart.phy_position_x = buttonx[global.buttonpos] + 10;
    obj_player_redheart.phy_position_y = 444;
    obj_player_redheart.alarm[3] = 5; // set the cooldown for interacting with a button
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) { // if they choose a button
    if (nointeract != true) {
        if (inbox == 0) {
            if (obj_player_redheart.alarm[3] <= 0) { // select fight button
                obj_player_redheart.alarm[3] = 5; // set the cooldown for interacting with a button
                
                // teleport player selector to first selection position inside box
                obj_player_redheart.phy_position_x = 71;    // x
                obj_player_redheart.phy_position_y = 285;   // y
                audio_play_sound(snd_menu_select,10,false);
                inbox = 1;
                selectpos = 1;
            }
        } else if (inbox == 1) {
            audio_play_sound(snd_menu_select,10,false);
            inbox = 2;
            selectedmonster = selectpos - 1;
        }
    }
} else if (keyboard_check_pressed(ord("X"))) {
    if (nointeract != true) {
        if (inbox == 1) {
            if (obj_player_redheart.alarm[3] <= 0) {
                obj_player_redheart.alarm[3] = 5; // set the cooldown for interacting with a button
                obj_player_redheart.phy_position_x = buttonx[global.buttonpos] + 10;
                obj_player_redheart.phy_position_y = 444;
                inbox = 0;
                global.draw = -1;
                
            }
        } else if (inbox == 2) { // if the player is in the second stage of the fight box
        
            inbox = 1; // set var to tell the function that the player is now in the first stage of the fight box
            
        }
    }
}
if (inbox == 1) { // selecting monster to fight from the available displayed options

    options = global.monstercount; // set the options based on how many mobs were encountered
    scr_moveinfightbox(options,selectpos); // move between the monsters to select one to further interact with
    global.draw = 0;
    
} else if (inbox == 2) {

    if (global.buttonpos == 0 && obj_player_redheart.alarm[3] <= 0) { // FIGHT button
        
        scr_attack(); // do the attack anim and deal damage to the selected monster
        global.draw = -1; // stop drawing the names
        nointeract = true // don't allow player interaction (X, Z, Enter, etc.)
        
    } else if (global.buttonpos == 1 && obj_player_redheart.alarm[3] <= 0) { // ACT button
        
        
        global.draw = 1;
        
    } else if (global.buttonpos == 2 && obj_player_redheart.alarm[3] <= 0) { // ITEMS button
        global.draw = 2;
        // todo: set his up later when you have the item stuff configured in the file system
        
    } else if (global.buttonpos == 3 && obj_player_redheart.alarm[3] <= 0) {// MERCY button
        global.draw = 3;
        scr_moveinfightbox(1,1); // allow moving around in the mercy selected fight box
        
    }
} else if (inbox == 3) {
    
    inbox = 0;
}
/*if (inbox == 2) { // FIGHTing
    obj_player_redheart.draw = 0;
    
} else if (inbox == 3) { // Selecting option to act
    for (s = 0; s < 
    
} else if (inbox == 4) { // selecting item to use
    
} else if (inbox == 5) { // selecting mercy option
    
}*/
// select the current button

// select options w/in the button (teleported to dialog box)
