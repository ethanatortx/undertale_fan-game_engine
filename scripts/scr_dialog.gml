/// scr_dialog
// called in step event, create with that in mind

// argument0 = queue to search through dialog.txt to find the dialog lines
// argument1 = speaking character's name as used in spr naming convention
// argument2 = speed to display text (normal is like 0.75 or so)
// argument3 = which sound to play for character speech sound
// argument4 = frequency to play speech sound
// argument5 = whether or not to setup dialog

//setup dialog with the specified variables if not initialized
if (argument5) {
    scr_setup_dialog(argument0, argument1, argument2, argument3, argument4);
}

// if dialog is happening; do this whole thing
if (is_talking) {
    // if it hasn't displayed this whole line of dialog yet
    if (characters < current_line_length) {
        // allows the player to skip all this and just diplay it by pressing X
        if (keyboard_check_pressed(ord("X"))) {
            current_drawn_text = dialog_lines[current_dialog_line,0];
            characters = current_line_length;
        } else {
            // iterate down the pause timer
            if (count_of_pause > 0 && pause_talking) {
                count_of_pause -= 1;
            
            } else { // add dialog to the drawn text var
                
                characters += talking_speed // increase the character count based on the specified display speed
                pause_talking = false // no longer paused
            }
            
            // check if the current character is a period
            if (string_char_at(dialog_lines[current_dialog_line,0], characters) == "." && !pause_talking) {
                count_of_pause = 15; // pause for ten frames
                pause_talking = true; // boolean indicating pause
                no_speech_sound = true; // pause the dialog speech sound
                alarm_set(6,5); // set a buffer for the no_speech_sound switch
            }
            
            // take a pause at a comma for 5
            if (string_char_at(dialog_lines[current_dialog_line,0], characters) == "," && !pause_talking) {
                count_of_pause = 5; // pause for five frames
                pause_talking = true; // boolean indicating pause
                no_speech_sound = true; // pause the dialog speech sound
                alarm_set(6,5); // set a buffer for the no_speech_sound switch
            }
            
            // add text to the currently drawn line
            current_drawn_text = string_copy(dialog_lines[current_dialog_line,0],1,characters);
            
            // start playing the speech sound again if it is not during a pause and the buffer has run out
            if (alarm_get(6) <= 0) {
                if (!pause_talking) {
                    no_speech_sound = false;
                }
            }
            
            // play the speech sound at specified frequency
            if ((10*characters) % speech_frequency == 0 && !no_speech_sound) {
                audio_play_sound(speech_sound,10,false);
            }
        }
    // if the player presses enter, and the previous line is done, and there is more dialog to display, move to the next line of dialog
    } else if (current_dialog_line < (array_height_2d(dialog_lines) - 1) && keyboard_check_pressed(vk_enter)) {
        
        current_dialog_line += 1; // iterate throught the dialog lines
        
        current_line_length = string_length(dialog_lines[current_dialog_line,0]); // new line length is et
        current_face = scr_interpret_faces(dialog_lines[current_dialog_line,1],argument1); // new face is set
        
        characters = 0; // character count is set back to zero
        current_drawn_text = ""; // previously drawn text is erased
    
    // if there are no more dialog lines to display and the palyer presses enter then stop diaplaying dialog
    } else if (keyboard_check_pressed(vk_enter)) {
        is_talking = false; // all dialog has happened
        characters = 0;
        current_drawn_text = ""; // no text is drawn
    }
}
