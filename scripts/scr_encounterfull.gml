/// scr_encounterfull
if (encounter_full = true) {
    /*if (dictionaryinitialize == false) {
        script_execute(obj_player_main.monster); // setup dictionary for specific monster
        encwords = global.monster[? "encounter"]; // get first phrase for encounter to display immediately as well as draw
        object = global.monster[? obj[]]; // get object list as defined in dictionary
        name = global.monster[? "name"];
        act = global.monster[? act];
        global.actnum = array_height_2d(act);
            // objectpos architecture (2d array):
            // height = object number as defined in monster's dictionary
            // length = x,y,xjiggle,yjiggle for each object (respectively)
        for (global.i = 3; global.i < array_height_2d(global.monster[? objectpos]); global.i += 1 ) {
            for (global.j = 3; global.j < array_length_2d(global.monster.objectpos, global.i); global.j += 1) {
                objectpos[global.i,global.j] = global.monster[? objectpos[global.i,global.j]];
            }
            instance_create(objectpos[global.i,0],objectpos[global.i,1],object[global.i]);
        }
        dictionaryinitialize = true;
    } else {
        ds_map_destroy(global.monster);
    }*/
    obj_player_redheart.state = scr_fight_state;
}
