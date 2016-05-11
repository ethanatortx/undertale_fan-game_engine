/// scr_read_dialog

dialog_qeue = argument0; // what is the name of the dialog instance to search for
dialg_file = file_text_open_read(program_directory + "\dialog"); // open dialog.txt
local.dialog_lines_temp[0] = undefined;
local.D = 0;

while (!file_text_eof(dialog_file)) {
    currentline = file_text_readln(dialog_file);
    if (currentline == dialog_qeue) {
        while (local.dialog_lines_temp[local.D] != "end") {
            local.dialog_lines_temp[local.D] = file_text_readln(dialog_file);
            local.D += 1;
        }
        file_text_close(dialog_file);
        return local.dialog_lines_temp;
        exit;
    }
}
file_text_close(dialog_file);
return local.dialog_lines_temp;
exit;
