/// scr_get_original_player_name

var name = undefined;
if (file_exists(working_directory + "/undertale.ini")) {
    ini_open(working_directory + "/undertale.ini");
    if (ini_section_exists("General")) {
        name = ini_read_string("General","Name",undefined);
    }
    ini_close();
}

return name;
