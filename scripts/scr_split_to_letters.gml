/// scr_split_to_letters

to_convert = argument0;
arr_return = undefined;
if (string_length(to_convert) == 0) {
    arr_return[0] = "";
} else {
    for (i = 0; i < string_length(to_convert); i++) {
        arr_return[i] = string_char_at(to_convert,i + 1);
    }
}
return arr_return;
