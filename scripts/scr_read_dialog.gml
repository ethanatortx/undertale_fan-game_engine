/// scr_read_dialog

dialog_qeue = argument0;
dialg_file = file_text_open_read(program_directory + "\dialog");
local.dialog_lines_temp[0] = undefined;
local.D = 0;

while (!file_text_eof(dialog_file)) {
    currentline = file_text_readln(dialog_file);
    if (currentline == dialog_qeue) {
        while (local.dialog_lines_temp[local.D] != "end") {
            local.dialog_lines_temp[local.D] = file_text_readln(dialog_file);
            local.D += 1;
        }
        return local.dialog_lines_temp;
        exit;
    }
}

return local.dialog_lines_temp;
exit;