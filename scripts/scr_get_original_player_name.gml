/// scr_get_original_player_name

if (file_exists(working_directory + "\file0")) {
    save_file = file_text_open_read(working_directory + "\file0");
    name = file_text_read_string(save_file);
    file_text_close(save_file);
    global.pre_chosen = true;
} else if (file_exists(working_directory + "\file9")) {
    save_file = file_text_open_read(working_directory + "\file9");
    name = file_text_read_string(save_file);
    file_text_close(save_file);
    global.pre_chosen = true;
} else {
    name = undefined;
    global.pre_chosen = false;
}

return name;
