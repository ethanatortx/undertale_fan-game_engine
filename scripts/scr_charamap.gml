/// scr_charamap

//todo: actually set up their sprites and stuff
global.chara = ds_map_create();
ds_map_add(global.chara,"font",fnt_main);
ds_map_add(global.chara,"voice",snd_narrator_talking);
ds_map_add(global.chara,"talkspeed",30);
return global.chara;
