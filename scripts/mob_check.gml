/// mob_check

def = argument0;
atk = argument1;
hp = argument2;
check = argument3; // flavor text for the check
name = argument4;

formattedcheck = string_upper(name) + " - ATK " + string(atk) + " DEF " + string(def) + "
" + check;

return formattedcheck;
