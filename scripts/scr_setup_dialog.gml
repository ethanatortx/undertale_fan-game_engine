/// scr_setup_dialog

// initialize dialog holding and counting variables
dialog_lines = scr_read_dialog(argument0);  // the 2d array which holds the dialog
current_dialog_line = 0;                    // set the current line to the first line of dialog
current_drawn_text = "";                    // there is nothing currently drawn on screen at the start
current_line_length = string_length(dialog_lines[0,0]);    // set the current line length to the length of the first line of dialog in the array
characters = 0;                             // set character count to 0

// get the first face to be drawn
current_face = scr_interpret_faces(argument1,dialog_lines[0,1]);

// dialog display and speech sound variables
is_talking = true;                          // the character starts off talking
talking_speed = argument2;                  // set the character display increase to the input specified
speech_sound = argument3;                   // set the characer's talking sound to the one specified
speech_frequency = argument4;               // set how often the game plays said sound
no_speech_sound = false;                    // starts off playing the sound from the beginning (only pauses on periods, commas, and ends of dialog line)
