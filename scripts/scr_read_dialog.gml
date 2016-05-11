/// scr_read_dialog

dialog_qeue = argument0; // get the name of the dialog encounter (one monster speaking for one call of this script btw)
dialg_file = file_text_open_read(working_directory + "\dialog"); // open dialog.txt (holds all in-game dialog stuff)
local.dialog_lines_temp[0] = undefined; // initializing the temp dialog array to grab dialog from the file and return it
local.D = 0; // variable for iteration through the while loop

while (!file_text_eof(dialog_file)) { // while the file is not over
    currentline = file_text_readln(dialog_file); // iterate through the file;
    if (currentline == dialog_qeue) { // checking the file iteration for if the encounter's dialog section has come up
        while (local.dialog_lines_temp[local.D] != "end") { // move through the encounter's dialog after it is found
            local.dialog_lines_temp[local.D] = file_text_readln(dialog_file); // record each line of dialog in new index of the array
            local.D += 1; // iterate the inside while loop counter
        }
        return local.dialog_lines_temp; // return early to exit and not risk calling it again and messing up the return var
        exit; // this probably isn't needed, but I'm not sure how return really works in game maker
    }
}

return local.dialog_lines_temp;
exit;
