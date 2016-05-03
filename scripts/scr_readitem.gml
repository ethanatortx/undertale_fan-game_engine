/// scr_readitem

itemreq = argument0;
itemstxt = file_text_open_read(working_directory + "\items.txt");
currentline = ""

while (currentline != "fileend") {
    if (currentline == itemreq) {
        itemtype = file_text_read_string(itemstxt);
        itemdesc = file_text_read_string(itemstxt);
        if (itemtype == "weapon") {
            global.attack = file_text_read_real(itemstxt);
            num_of_bars = file_text_read_real(itemstxt);
            bar_type = file_text_read_string(itemstxt);
        }
    }
}
