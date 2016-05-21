/// scr_shake_instant

letters_draw = scr_split_to_letters(argument0);

x_assign = x_coord;
y_assign = y_coord;
for (i = 0; i < array_length_1d(letters_draw); i++) {
    arr_letters_pos[i,0] = letters_draw[i];
    if (arr_letters_pos[i,0] == "~") {
        x_assign = x_coord
        y_assign += fontsize + 6;
    } else {
        x_assign += fontsize/2 + 6;
    }
    
    x_shake_r = random_range(0,100);
    y_shake_r = random_range(0,100);
    
    if (x_shake_r <= shake_freq) {
        negative_or_not = (round(irandom_range(-1,0)))
        if (negative_or_not == -1) {
            x_post_shake = x_assign + (shake_x * negative_or_not);
        } else {
            x_post_shake = x_assign + shake_x;
        }
    } else {
        x_post_shake = x_assign
    }
    
    if (y_shake_r <= shake_freq) {
        negative_or_not = (round(irandom_range(-1,0)))
        if (negative_or_not == -1) {
            y_post_shake = y_assign + (shake_y * negative_or_not);
        } else {
            y_post_shake = y_assign + shake_y;
        }
    } else {
        y_post_shake = y_assign
    }
    // positions to draw individual characters at
    arr_letters_pos[i,1] = x_post_shake;
    arr_letters_pos[i,2] = y_post_shake;
}
