/// scr_draw_monster

monster = argument0;
place_in_order = argument1 + 1;
draw_set_font(fnt_main);
draw_set_alpha(1);
draw_set_color(c_white);
//draw_text(0,0,monster);
sprites_to_draw = script_execute(asset_get_index("mob_" + monster + "_txtr"));

for (k = 0; k < array_height_2d(sprites_to_draw)-1; k++) {
    animation[k] = sprites_to_draw[k,4];
    xpos[k] = sprites_to_draw[k,1];
    ypos[k] = sprites_to_draw[k,2];
}

for (spr_to_draw = 0; spr_to_draw < array_height_2d(sprites_to_draw)-1; spr_to_draw++) {
    draw_sprite(sprites_to_draw[spr_to_draw,0],animation[spr_to_draw],xpos[spr_to_draw],ypos[spr_to_draw]);
    if (animation[spr_to_draw] <= sprites_to_draw[k,4]) {
        backwards = false;
    } else if (animation[spr_to_draw] >= sprites_to_draw[k,5]) {
        backwards = true;
    } else if (animation[spr_to_draw] < sprites_to_draw[k,5] && !backwards) {
        animation[spr_to_draw] += sprites_to_draw[spr_to_draw,3];
    } else if (backwards = true) {
        animation[spr_to_draw] -= sprites_to_draw[k,3];
    } 
}

