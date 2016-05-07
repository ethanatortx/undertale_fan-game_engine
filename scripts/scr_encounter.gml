/// scr_encounter

// do first setup commands
state = scr_nomove_state; // stop the player from moving
image_speed = 0; // make player stop running
image_index = 0; // set the player to standing still
room_goto(rm_fight); // send them to the fight room

// initialize variables
trigger_draw_dialogbox = false;
canencounter = false; // cannot encounter monsters again until this is set to true (set up timer for this later)
selectnum = 0;
selectpos = 0;
heart_tick_count = 0;
global.totalmobhp = 0;
global.monstercount = argument0;
firstsprite = obj_player_main.sprite_index;

// set up the encounter's monster stuff
if (global.region == "ruins") {
    for (r = 0; r < global.monstercount; r += 1) {
        scr_readmonster(global.ruinsencounters[global.ruinsencounternum - 1]); 
        global.totalmobhp += mobhp; // set up the monster health pool
        global.ruinsencounternum -= 1; // remove those monsters from the monster pool (add them back if they are spared)
    }
}

// start the fight phase stuff
encounter_start = true;
encounter_transition = false;
encounter_full = false;

global.playerx = x; // the player's x position at the time of encounter
global.playery = y; // and respective y position

newx = global.playerx
newy = global.playery
