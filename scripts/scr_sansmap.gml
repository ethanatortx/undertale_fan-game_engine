/// scr_sansmap
scr_createfont();
global.sans = ds_map_create()
ds_map_add(global.sans,"neutral",spr_sans_face_neutral);
ds_map_add(global.sans,"serious",spr_sans_face_serious);
ds_map_add(global.sans,"wink",spr_sans_face_wink);
ds_map_add(global.sans,"laughing",spr_sans_face_laughing);
ds_map_add(global.sans,"smiling",spr_sans_face_smiling);
ds_map_add(global.sans,"closed",spr_sans_face_smiling);
ds_map_add(global.sans,"voice",snd_sans_talk1);
ds_map_add(global.sans,"font",global.comicsans);
ds_map_add(global.sans,"talkspeed",0.75);
return global.sans;
