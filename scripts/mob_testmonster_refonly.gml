/// mob_testmonster (legacy code, ref only for constuction in monsters.txt)

// create the dictionary so things can be stored in it (don't forget to do a destroy command for the dictionary later)
global.monster = ds_map_create();

// attacks
ds_map_add(global.monster,"attack1",mob_testmonster_attack1);   // first attack pattern/option
ds_map_add(global.monster,"attack2",mob_testmonster_attack2);   // other attach pattern
                                                                    // pick between those at random

for (a = 0; a < 4; a += 1) {
    for (b = 0; b < 4; b += 1) {
        objectpos[a,b] = 0;
    }
    obj[a] = 0;
}

// sprites
ds_map_add(global.monster,obj[0],obj_testmonster_tl); // top left quadrant
ds_map_add(global.monster,objectpos[0,0],200); // x pos of object
ds_map_add(global.monster,objectpos[0,1],200); // y pos of object
ds_map_add(global.monster,objectpos[0,2],3); // x jiggle of object
ds_map_add(global.monster,objectpos[0,3],3); // y jiggle of object
ds_map_add(global.monster,obj[1],obj_testmonster_tr); // top right quadrant
ds_map_add(global.monster,objectpos[1,0],220); // x pos of object
ds_map_add(global.monster,objectpos[1,1],200); // y pos of object
ds_map_add(global.monster,objectpos[1,2],3); // x jiggle of object
ds_map_add(global.monster,objectpos[1,3],3); // y jiggle of object
ds_map_add(global.monster,obj[2],obj_testmonster_bl); // bottom left quadrant
ds_map_add(global.monster,objectpos[2,0],200); // x pos of object
ds_map_add(global.monster,objectpos[2,1],220); // y pos of object
ds_map_add(global.monster,objectpos[2,2],3); // x jiggle of object
ds_map_add(global.monster,objectpos[2,3],3); // y jiggle of object
ds_map_add(global.monster,obj[3],obj_testmonster_br); // bottom right quadrant
ds_map_add(global.monster,objectpos[3,0],220); // x pos of object
ds_map_add(global.monster,objectpos[3,1],220); // y pos of object
ds_map_add(global.monster,objectpos[3,2],3); // x jiggle of object
ds_map_add(global.monster,objectpos[3,3],3); // y jiggle of object

// flavor text
ds_map_add(global.monster,"check","This monster is strangely cubular");

// attributes
ds_map_add(global.monster,"hp",5);                  //      health - maximum health
ds_map_add(global.monster,"def",1);                 //      def - pre set (modifies damage dealt to this monster by player attacks)
ds_map_add(global.monster,"atk",1);                 //      atk - pre set (damage dealt to player by attacks pre-def modification)
ds_map_add(global.monster,"name","testmonster");    //      name - name to display in 'check'
ds_map_add(global.monster,"xp",10);                 //      exp - pre set

// dialog
ds_map_add(global.monster,"encounter","Test monster appears to defeat you!");   // flavor text that plays when mob is encountered
ds_map_add(global.monster,"speech1","Hey, there. I'm testmonster");             // the monster will say this every so often (figure out frequency later)

// actions
    // arrays to hold the different dialogs and entry buttons for the different act options


for (c = 0; c < 4; c += 1) {
    for (d = 0; d < 2; d += 1) {
        act[c,d] = "";
    }
}
act[0,0] = "CHECK";
act[0,1] = mob_check(global.monster[? "def"],global.monster[? "atk"],global.monster[? "hp"],global.monster[? "check"],global.monster[? "name"]); // this holds the formatted string to display when the mob is checked
act[1,0] = "Say Hello";
act[1,1] = "Hello there human.";
act[2,0] = "Compliment";
act[2,1] = "Thanks, you too.";
act[3,0] = "Insult";
act[3,1] = "How rude!";
    // each returns an array (val 1 = what the act option says; val 2 = what game says when this option is picked)
ds_map_add(global.monster,"act",act);

// mercy
    // do this later, once you have basic interface done.
                                         
return global.monster;
