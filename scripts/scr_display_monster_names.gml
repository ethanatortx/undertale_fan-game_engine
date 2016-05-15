/// scr_display_monster_names
// draw monster names
if (inbox == 1) {
    if (global.buttonpos < 2) {
        draw_set_font(fnt_menu);
        for (i = 0; i < array_height_2d(global.monster_stats); i += 1) {
            if (global.monster_stats[i,1] > 0) {
                // put the draw code here (needs positions of names lol)
            }
        }
    } else if (global.buttonpos == 2) {
        player_items = scr_read_player_items();
        
    } else if (global.buttonpos == 3) {
        draw_text(0,0,"Mercy"); 
        draw_text(0,0,"Flee");
    }
}
