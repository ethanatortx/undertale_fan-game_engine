/// scr_display_monster_names
// draw monster names
if (inbox == 1) {
    if (global.buttonpos < 2) {
        draw_set_font(fnt_main);
        
        temp = scr_select_names();
        
        selected_item = temp[0];
        actual_index = temp[1];
        
        if (selected_item == 0) {
            draw_sprite(spr_redheart,0,64,284);
        }
        if (selected_item == 1) {
            draw_sprite(spr_redheart,0,332,284);
        }
        if (selected_item == 2) {
            draw_sprite(spr_redheart,0,64,314);
        }
        if (selected_item == 3) {
            draw_sprite(spr_redheart,0,332,314);
        }
        
        for (i = 0; i < array_height_2d(global.monster_stats); i++) {
            if (global.monster_stats[i,1] > 0) {
                if (i == 0) {
                    draw_text_ext_transformed_colour(96,276,"*",0,1000,1,1,0,c_white,c_white,c_white,c_white,255); // draw an asterisk before the name
                    draw_text_ext_transformed_colour(128,276,global.monster_stats[i,0],0,1000,1,1,0,c_white,c_white,c_white,c_white,255);
                }
                if (i == 1) {
                    draw_text_ext_transformed_colour(364,276,"*",0,1000,1,1,0,c_white,c_white,c_white,c_white,255); // draw an asterisk before the name
                    draw_text_ext_transformed_colour(396,276,global.monster_stats[i,0],0,1000,1,1,0,c_white,c_white,c_white,c_white,255); 
                }
                if (i == 2) {
                    draw_text_ext_transformed_colour(103,306,"*",0,1000,1,1,0,c_white,c_white,c_white,c_white,255); // draw an asterisk before the name
                    draw_text_ext_transformed_colour(135,306,global.monster_stats[i,0],0,1000,1,1,0,c_white,c_white,c_white,c_white,255);
                }
                if (i == 3) {
                    draw_text_ext_transformed_colour(364,306,"*",0,1000,1,1,0,c_white,c_white,c_white,c_white,255); // draw an asterisk before the name
                    draw_text_ext_transformed_colour(396,306,global.monster_stats[i,0],0,1000,1,1,0,c_white,c_white,c_white,c_white,255);
                }
            }
        }
    }
}
