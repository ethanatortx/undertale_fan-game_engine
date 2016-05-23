/// scr_draw_monster

gross_array = argument0;
location = argument1;
draw_set_font(fnt_main);
draw_set_alpha(1);
draw_set_color(c_white);
//draw_text(0,0,monster);
temp = gross_array[location];

for (spr_to_draw = 0; spr_to_draw < array_height_2d(temp)-1; spr_to_draw++) {
    anim_i = temp[spr_to_draw,6];
    draw_sprite_ext(temp[spr_to_draw,0],anim_i,temp[spr_to_draw,1],temp[spr_to_draw,2],2,2,0,c_white,1);
    if (anim_i <= temp[spr_to_draw,4]) {
        backwards = false;
    } else if (anim_i >= temp[spr_to_draw,5]) {
        backwards = true;
    }
    if (!backwards) {
        temp[spr_to_draw,6] -= temp[spr_to_draw,3];
    } else if (backwards) {
        temp[spr_to_draw,6] += temp[spr_to_draw,3];
    }
}

return temp;
