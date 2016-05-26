/// scr_draw_monster

gross_array = argument0;
location = argument1;
draw_set_font(fnt_main);
draw_set_alpha(1);
draw_set_color(c_white);
//draw_text(0,0,monster);
temp = gross_array[location];
// draw animation
for (spr_to_draw = 0; spr_to_draw < array_height_2d(temp)-1; spr_to_draw++) {
    anim_i = temp[spr_to_draw,6];
    draw_sprite_ext(temp[spr_to_draw,0],round(temp[spr_to_draw,6]),temp[spr_to_draw,1],temp[spr_to_draw,2],2,2,0,c_white,1);
    if (temp[spr_to_draw,6] < temp[spr_to_draw,4]) {
        backwards = true;
        temp[spr_to_draw,6] = temp[spr_to_draw,4];
    } else if (temp[spr_to_draw,6] > temp[spr_to_draw,5]) {
        backwards = false;
        temp[spr_to_draw,6] = temp[spr_to_draw,5];
    }
    if (!backwards) {
        temp[spr_to_draw,6] -= temp[spr_to_draw,3];
    } else if (backwards) {
        temp[spr_to_draw,6] += temp[spr_to_draw,3];
    }
    
}
// draw idle movement
for (aa = 0; aa < array_height_2d(temp); aa++) {
    if (animation_pos == undefined) {
        for (ab = 0; ab < array_height_2d(temp); ab++) {
            animation_pos[ab,0] = undefined;
            animation_pos[ab,1] = undefined;
        }
    }
    if (animation_pos[aa,0] == undefined) {
        animation_pos[aa,0] = temp[aa,1];
    }
    if (animation_pos[aa,1] == undefined) {
        animation_pos[aa,1] = temp[aa,2];
    }
    if (anim_speed == undefined) {
        for (ac = 0; ac < array_height_2d(temp); ac++) {
            anim_speed[ac,0] = undefined;
            anim_speed[ac,1] = undefined;
        }
    }
    if (anim_speed[aa,0] == undefined) {
        anim_speed[aa,0] = temp[aa,9];
    }
    if (anim_speed[aa,1] == undefined) {
        anim_speed[aa,1] = temp[aa,10];
    }
    // flip the speed so it goes in the opposite direction
    if (animation_pos[aa,0] > (temp[aa,1] + temp[aa,7])) {
        anim_speed[aa,0] = -1 * anim_speed[aa,0];
    } else if (animation_pos[aa,0] > (temp[aa,1] - temp[aa,7])) {
        anim_speed[aa,0] = -1 * anim_speed[aa,0];
    }
    if (animation_pos[aa,1] > (temp[aa,2] + temp[aa,8])) {
        anim_speed[aa,1] = -1 * anim_speed[aa,1];
    } else if (animation_pos[aa,1] < (temp[aa,2] - temp[aa,8])) {
        anim_speed[aa,1] = -1 * anim_speed[aa,1];
    }
    
    animation_pos[aa,0] += anim_speed[aa,0];
    animation_pos[aa,1] += anim_speed[aa,1];
    draw_sprite_ext(temp[aa,0],0,animation_pos[aa,0],animation_pos[aa,1],2,2,0,c_white,1);
}
return temp;
