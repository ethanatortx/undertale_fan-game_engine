/// scr_movetobuttons
xpos = obj_player_redheart.x // current position of the battle heart obj (x)
ypos = obj_player_redheart.y // current position of the battle heart obj (y)

if (xpos > 32 and xpos < 62 and ypos < 474 and ypos > 432 and notagain != false) {
    touchedit = true;
    obj_player_redheart.phy_position_x = 42;
    obj_player_redheart.phy_position_y = 444;
    global.buttonpos = 0;
    notagain = false;
    
} else if (((xpos != buttonx[0] || xpos != buttonx[1] || xpos != buttonx[2] || xpos != buttonx[3]) || touchedit == true) and obj_player_redheart.phy_position_y != 444) {
    //inversx = 
    //inversy = 
    //startx = round(startx);   
    //starty = round(starty);
    xstep = (44 - startx) / room_speed*2;
    ystep = (444 - starty) / room_speed*2;
    
    
    
    obj_player_redheart.phy_position_x += xstep;
    obj_player_redheart.phy_position_y += ystep;
    
}

