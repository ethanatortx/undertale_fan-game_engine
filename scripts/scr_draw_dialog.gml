/// scr_draw_dialog

// argument0 = x position to draw at
// argument1 = y position to draw at
// argumemt2 = font
// argument3 = line separation amount
// argument4 = line break point
// argument5 = text scale amount

draw_set_font(argument3);
draw_text_ext_transformed_colour(argument0,argument1,current_drawn_text,argument3,argument4,argument5,argument5,0,c_white,c_white,c_white,c_white,255);
