/// scr_display_monster_names
// draw monster names
if (inbox == 1) {
    if (global.buttonpos < 2) {
        draw_set_font(fnt_menu);
        for (i = 0; i < array_height_2d(global.monster_stats); i += 1) {
            if (global.monster_stats[i,1] > 0) {
                if (i == 0) {
                    draw_text_ext_transformed_colour(103,276,"*",0,1000,1,1,0,c_white,c_white,c_white,c_white,255); // draw an asterisk before the name
                    draw_text_ext_transformed_colour(135,276,global.monster_stats[i,0],0,1000,1,1,0,c_white,c_white,c_white,c_white,255);
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
    } else if (global.buttonpos == 2) {
        player_items = scr_read_player_items();
        
    } else if (global.buttonpos == 3) {
        draw_text(0,0,"Mercy"); 
        draw_text(0,0,"Flee");
    }
}
