/// scr_encounter

global.monstercount = argument0;
global.totalmobhp = 0;

selectnum = 0;
selectpos = 0;
i = 0;

state = scr_nomove_state;
image_speed = 0;
image_index = 0;
room_goto(rm_fight);

if (global.region == "ruins") {
    for (r = 0; r < global.monstercount; r += 1) {
        scr_readmonster(global.ruinsencounters[r]);
        global.totalmobhp += mobhp;
        global.ruinsencounternum -= 1;
    }
}

firstsprite = obj_player_main.sprite_index;
canencounter = false;

trigger_draw_dialogbox = false;
heart_tick_count = 0;
encounter_start = true;
encounter_transition = false;
encounter_full = false;

global.playerx = x;
global.playery = y;

newx = global.playerx
newy = global.playery

// draw heart for start
// code is run in step event inside sperate functions

