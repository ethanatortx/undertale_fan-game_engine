/// scr_attack

obj_player_redheart.image_alpha = 0;

global.drawnames = false;
global.drawattack = true;

if (onceonly == 1) {
    instance_create(display_get_gui_width()/2,320,obj_fight_hitbox); // create the actual hitbox for the fight bar to do stuff ( so the player has a reference on when to push Z/ENTER )
    
    instance_create(32, 258, obj_fight_bar_knife); // create the fight bar object ( the thing to indicate the player's positin on the fight bar for the fight mechanic )
}
