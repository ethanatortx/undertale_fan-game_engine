/// scr_interpret_faces
// takes in the name of a face from dialog.txt and 
// the name of the character and finds the 
// correct sprite and returns it

face_name = argument0;
character_name = argument1;

asset_index = asset_get_index("spr_" + character_name + "_" + face_name);

return asset_index;
