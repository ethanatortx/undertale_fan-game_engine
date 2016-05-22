/// scr_draw_monster

monster = argument0;
place_in_order = argument1 + 1;

sprites_to_draw = script_execute(asset_get_index("scr_" + monster + "_txtr"));

for (k = 0; k < array_height_2d(sprites_to_draw); k++) {
    animation[k] = 0;
    xpos[k] = sprites_to_draw[k,1];
    ypos[k] = sprites_to_draw[k,2];
}

for (spr_to_draw = 0; spr_to_draw < array_height_2d(sprites_to_draw); spr_to_draw++) {
    draw_sprite(sprites_to_draw[spr_to_draw,0],animation[spr_to_draw],xpos[spr_to_draw],ypos[spr_to_draw]);
    animation[spr_to_draw] += sprites_to_draw[spr_to_draw,3];
}

    for (k = 0; k < sprite_get_number(sprites_to_draw[spr_to_draw,0]) - 1; k++) {
        animation += sprites_to_draw[spr_to_draw,3];
    }
