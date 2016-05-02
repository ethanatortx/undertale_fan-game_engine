/// scr_readmonster
monstername = argument0;
monstertxt = file_text_open_read(working_directory + "\monsters.txt");
currentline = ""
while (currentline != "fileend") {
    currentline = file_text_readln(monstertxt);
    if (string(currentline) == monstername) {
        
    }
}
