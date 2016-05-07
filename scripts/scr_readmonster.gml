/// scr_readmonster

monstername = argument0;
monstertxt = file_text_open_read(working_directory + "\" + monstername + ".txt");//open the monsters.txt file (this holds stats for all the in-game monsters, check file for stats formatting)
startrecording = false;
currentline = "";
mobhp = 0;
modatk = 0;
mobdef = 0;
expreward = 0;
startline = file_text_read_string(monstertxt); // first line of the file ( aka "filestart" )
insideline = "";

while (currentline != "fileend") { // until the file is no longer recording data
    currentline = file_text_read_string(monstertxt); // iterate throught the file until the monster's section is found
    file_text_readln(monstertxt);
    if (currentline == monstername) { // if the monster's selection is found
        while (insideline != "end") {
            insideline = file_text_read_string(monstertxt); // iterate through the file in the monster's section
            file_text_readln(monstertxt);
            if (insideline == "txtr") { // start txtr section recording
                txtr_num_total = file_text_read_string(monstertxt); // how many total textures are to be recorded in the upcoming code
                file_text_readln(monstertxt);
                for ( i = 0; i < txtr_num_total; i += 1 ) {
                    txtr_array_txtrindex[i] = file_text_read_string(monstertxt); // record the name of each individual texture in an array
                    file_text_readln(monstertxt);
                }
                for ( g = 0; g < txtr_num_total; g += 1) {
                    for (h = 0; h < 2; h += 1) {
                        txtr_array_txtrpos_x_y[g,h] = file_text_read_string(monstertxt); // record the texture positions in an array corresponding to the txtr names array
                        file_text_readln(monstertxt);
                    }
                }
            } else if (insideline == "act") {
                act_num_total = file_text_read_string(monstertxt); // how many act options are there ( check is provided by default )
                for ( j = 0; j < act_num_total; j += 1 ) {
                    act_array_options[j] = file_text_read_string(monstertxt); // store the options to be displayed before one is selected
                    file_text_readln(monstertxt);
                }
                for ( k = 0; k < act_num_total; k += 1 ) {
                    act_array_responses[k] = file_text_read_string(monstertxt); // what is said back by the monster when the option is selected
                    file_text_readln(monstertxt);
                }
            } else {
                mobhp = file_text_read_string(monstertxt); // read the monster's hp
                file_text_readln(monstertxt);
                mob_attack = file_text_read_string(monstertxt); // read the monster's attack value
                file_text_readln(monstertxt);
                mob_defense = file_text_read_string(monstertxt); // read the monster's defense value
                file_text_readln(monstertxt);
                mob_ex_points = file_text_read_string(monstertxt); // read the exp awarded by this monster upon a kill
                file_text_readln(monstertxt);
            }
        }
    }
}

file_text_close(monstertxt);
exit;

/*
format goes like this:
name (string)
hp (int)
atk (int)
def (int)
exp (int)
txtr (texture storage starts)
how many txtrs (int)
textures start...
...
...
...textures end (all the textures to be displayed, string, store in 1d array)
texture pos x...
...
...
...texture pos x end (all the x coords to display the sprites at in respective order, int, store in 1d array)
texture pos y...
...
...
...texture pos y end (all the y coords to display the sprites at in respective order, int, store in 1d array)
act (start of act section, never includes check as that is done seperately for all mobs using their above data)
how many act options (int)
monster act options...
...
...
... monster act options end (the act options for the monster, string, store in 2d array height)
monster act dialog...
...
...
...monster act dialog end (monster act dialog, string, store in 2d array above's width)
end (string, marker that it can stop reading the file and close it because all data has been pulled)*/
