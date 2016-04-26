/// scr_drawdialog
// draw dialog
/*xtext = 0;
ytext = 0;
xpos = 0;
ypos = 0;*/

//argument0 = top or bottom (boolean; false = bottom, true = top)
//argument1 = face or no face (boolean; false = no, true = yes)

//
vwidth = 640;
vheight = 480;
linebreak = 0;
display_set_gui_size(vwidth,vheight);
if (global.dialog == true) {

    draw_set_font(ds_map_find_value(char,"font")); // set the font to the font specified
    
    if (ds_map_find_value(char,"font") == fnt_papyrus) { // papyrus settings
        scale = 2;
        imgscale = 2;
        fontsize = 1;
        
    } else if (ds_map_find_value(char,"font") == global.comicsans) { // comic sans settings
        scale = 2;
        imgscale = 3;
        fontsize = 1;
    } else if (ds_map_find_value(char,"font") == fnt_main) { // narrator settings
        scale = 1;
        imgscale = 3;
        fontsize = 2;
    }
    
    if (argument0 == true) { // checks if on bottom or top of screen (bottom = false, top = true)
        ypos = 8;
        ytext = 32;
    } else {
        ypos = 320;
        ytext = 348;
    }
    if (argument1 == false) { // checks if there is a face before the dialog
        xtext = 94;
        linebreak = (vwidth-132);
    } else {
        xtext = 200;
        linebreak = (vwidth-232);
    }
    
    // draws dialog box
    if (draw == true) {
        draw_rectangle_colour(32,ypos,vwidth-32,ypos + 146,c_black,c_black,c_black,c_black,false); // draw dialog background (just a black rectangle)
        draw_rectangle_colour(32,ypos,38,ypos + 152,c_white,c_white,c_white,c_white,false); // draw left bounding
        draw_rectangle_colour(32,ypos,vwidth-32,ypos+6,c_white,c_white,c_white,c_white,false); // draw top bounding
        draw_rectangle_colour(vwidth-38,ypos,vwidth-32,ypos + 152,c_white,c_white,c_white,c_white,false); // draw right bounding
        draw_rectangle_colour(32,ypos + 146,vwidth-32,ypos + 152,c_white,c_white,c_white,c_white,false); // draw bottom bounding
        
        draw_text_ext_transformed_colour(xtext-34,ytext,asterisks,20*fontsize,linebreak/scale,scale,scale,0,c_white,c_white,c_white,c_white,255); // put down an asterisk at the beginning of the dialog
        draw_text_ext_transformed_colour(xtext,ytext,message_draw,20*fontsize,linebreak/scale,scale,scale,0,c_white,c_white,c_white,c_white,255); // write the text inside bounding box
    }
    
    
    if (argument1 == true ) { //draw the face if there is a face
        draw_sprite_ext(emotion_current,0,48,ypos+24,imgscale,imgscale,0,c_white,255);
    }
    
}
