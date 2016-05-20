/// scr_setup_dialog_ext_prespec

// argument0 = dialog to draw
// argument1 = x coordinate
// argument2 = y coordinate
// argument3 = speed to display text (normal is like 0.75 or so)
// argument4 = which sound to play for character speech sound
// argument5 = frequency to play speech sound
// argument6 = amount of x to move by
// argument7 = amount of y to move by
// argument8 = chance for letter shake to occur
// argument9 = font to draw in

// initialize dialog holding and counting variables
dialog_line = argument0;                   // the dialog line to draw
current_drawn_text = "";                    // there is nothing currently drawn on screen at the start
line_length = string_length(dialog_line);    // set the current line length to the length of the first line of dialog in the array
characters = 0;                             // set character count to 0

// dialog display and speech sound variables
is_talking = true;              // the character starts off talking
x_coord = argument1;            // the x coordinate for drawing
y_coord = argument2;            // the y coordinate for drawing
talking_speed = argument3;      // set the character display increase to the input specified
speech_sound = argument4;       // set the characer's talking sound to the one specified
speech_frequency = argument5;   // set how often the game plays said sound
no_speech_sound = false;        // starts off playing the sound from the beginning (only pauses on periods, commas, and ends of dialog line)
pause_talking = false;          // dialog does not start off paused
count_of_pause = 0;             // timer for the pause event in scr_dialog
shake_x = argument6;
shake_y = argument7;
shake_freq = argument8;
x_assign = x_coord;
y_assign = y_coord;
font = argument9;
fontsize = font_get_size(argument9);
