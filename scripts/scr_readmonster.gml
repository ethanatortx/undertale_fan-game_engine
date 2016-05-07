/// scr_readmonster

monstername = argument0;
monstertxt = file_text_open_read(working_directory + "\monsters.txt");//open the monsters.txt file (this holds stats for all the in-game monsters, check file for stats formatting)
startrecording = false;
currentline = "";
mobhp = 0;
modatk = 0;
mobdef = 0;
expreward = 0;
startline = file_text_read_string(monstertxt); // first line of the file ( aka "filestart" )

while (currentline != "fileend") { // until the file is no longer recording data
    currentline = file_text_readln(monstertxt); // iterate throught the file until the monster's section is found
    if (currentline == monstername) { // if the monster's selection is found
        insideline = file_text_readln(monstertxt); // iterate through the file in the monster's section
        if (insideline == "txtr") { // start txtr section recording
            txtr_num_total = file_text_read_real(monstertxt); // how many total textures are to be recorded in the upcoming code
            for ( i = 0; i < txtr_num_total; i += 1 ) {
                txtr_array_txtrindex[i] = file_text_readln(monstertxt); // record the name of each individual texture in an array
            }
            for ( g = 0; g < txtr_num_total; g += 1) {
                for (h = 0; h < 2; h += 1) {
                    txtr_array_txtrpos_x_y[g,h] = file_text_read_real(monstertxt); // record the texture positions in an array corresponding to the txtr names array
                }
            }
        } else if (insideline == "act") {
            act_num_total = file_text_read_real(monstertxt); // how many act options are there ( check is provided by default )
            for ( j = 0; j < act_num_total; j += 1 ) {
                act_array_options[j] = file_text_read_string(monstertxt); // store the options to be displayed before one is selected
            }
            for ( k = 0; k < act_num_total; k += 1 ) {
                act_array_responses[k] = file_text_read_string(monstertxt); // what is said back by the monster when the option is selected
            }
        } else if (insideline == "end") {
            file_text_close(monstertxt);
            exit;
        } else {
            mobhp = file_text_read_real(monstertxt); // read the monster's hp
            mob_attack = file_text_read_real(monstertxt); // read the monster's attack value
            mob_defense = file_text_read_real(monstertxt); // read the monster's defense value
            mob_ex_points = file_text_read_real(monstertxt); // read the exp awarded by this monster upon a kill
        }
    }
}

file_text_close(monstertxt);
exit;

/*while (currentline != "fileend") {
    currentline = string(file_text_readln(monstertxt));//iterate the overall read line
    if (currentline == monstername) {
        startrecording = true;
    }
    if (startrecording) {
        for (i = 0; i < 4; i ++) {
            if (i == 0) {
                mobhp = file_text_read_real(monstertxt);
            } else if (i == 1) {
                mobatk = file_text_read_real(monstertxt);
            } else if (i == 2) {
                mobdef = file_text_read_real(monstertxt);
            } else {
                expreward = file_text_read_real(monstertxt);
            }
        }
        if (currentline == "txtr") {//begins reading the textures/sprites section
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
        } else if (currentline == "act") {//bgein reading the act section
            numact = file_text_read_real(monstertxt);
            for (c = 0; c < numact; c++) {
                for (d = 0; d < 2; d++) {
                    //2D array holding dialog options and monster responses
                    //  Height is the index for which choice it is in the select menu
                    //  Width contains the options and the dialog responses for the chosen index choice, in that order
                    act_2D_options_dialog[c,d] = file_text_read_string(monstertxt);
                }
            }
        } else if (currentline == "end") {//end the code at the end of this monster's stats section
            file_text_close(monstertxt);
            exit;
        }
        
    } 
}
file_text_close(monstertxt);
exit;*/
