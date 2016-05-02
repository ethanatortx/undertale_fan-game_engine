/// scr_readmonster
monstername = argument0;
monstertxt = file_text_open_read(program_directory + "\monsters.txt");
currentline = "";
while (startline != "fileend") {
    startline = file_text_readln(monstertxt);
    currentline = startline;
    if (string(startline) == monstername) {
        for (i = 0; i < 4; i ++) {
            if (i == 0) {
                global.mobhp = file_text_read_real(monstertxt);
            } else if (i == 1) {
                global.mobatk = file_text_read_real(monstertxt);
            } else if (i == 2) {
                global.mobdef = file_text_read_real(monstertxt);
            } else {
                global.expreward = file_text_read_real(monstertxt);
            }
        }
        if (string(currentline) == "txtr") {//begins reading the textures/sprites section
            numtextr = file_text_read_real(monstertxt);//how many different textures make up the mob to be displayed
            for (j = 0; j < numtextr;j++) {
                //1D array holding sprite names
                textr_name[j] = file_text_read_string(monstertxt);//grab the names for all the sprites to be drawn
            }
            for (a = 0; a < numtex; a++) {
                for (b = 0; b < 2; b++) {
                    //2D array holding texture positions
                    //  Height is the index that corresponds to the sprite names index
                    //  Width contains the x and y positions of the sprite of that index, in that order
                    textr_2D_xpos_ypos[a,b] = file_text_read_real(monstertxt);//grab the positions for the sprites to be drawn at
                }
            }
        } else if (string(currentline) == "act") {//bgein reading the act section
            numact = file_text_read_real(monstertxt);
            for (c = 0; c < numact; c++) {
                for (d = 0; d < 2; d++) {
                    //2D array holding dialog options and monster responses
                    //  Height is the index for which choice it is in the select menu
                    //  Width contains the options and the dialog responses for the chosen index choice, in that order
                    act_2D_options_dialog[c,d] = file_text_read_string(monstertxt);
                }
            }
        } else if (string(currentline) == "end") {//end the code at the end of this monster's stats section
            file_text_close(monstertxt);
            exit;
        }
        currentline = file_text_readln(monstertxt);//iterate the overall read line
    } 
}
