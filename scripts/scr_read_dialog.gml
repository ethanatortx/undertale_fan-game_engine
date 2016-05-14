/// scr_read_dialog

dialog_qeue = argument0; // what is the name of the dialog instance to search for
dialog_file = file_text_open_read(working_directory + "\dialog.txt"); // open dialog.txt
dialog_lines_temp[0,0] = "";
D = 0; // var to iterate thtough the lines of dialog

while (!file_text_eof(dialog_file)) {
    currentline = file_text_read_string(dialog_file);
    file_text_readln(dialog_file);
    if (currentline == dialog_qeue) {
        do {
            for (L = 0; L < 2; L += 1) {
                dialog_lines_temp[D,L] = file_text_read_string(dialog_file);
                file_text_readln(dialog_file);
                if (string_pos("Chara",dialog_lines_temp[D,L]) != 0) {
                    dialog_lines_temp[D,L] = string_copy(dialog_lines_temp[D,L],1,string_pos("Chara",dialog_lines_temp[D,L])-1) + global.playername + string_copy(dialog_lines_temp[D,L],string_pos("Chara",dialog_lines_temp[D,L]) + 5,string_length(dialog_lines_temp[D,L]));
                }
            }
            currentline = dialog_lines_temp[D,0];
            D += 1;
        } until (currentline == "end");
    }
}
file_text_close(dialog_file);
return dialog_lines_temp;
exit;
