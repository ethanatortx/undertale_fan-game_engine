/// scr_dialogsetup
//initializes the default values for dialog stuff

// don't forget to add these lines after declaring message:
//      message_end = array_length_1d(message);
//      message_length = string_length(message[message_current]);
// or it wont work properly

// variables/arrays for holding text that is going to be displayed
message[0] = ""             // array that holds dialog
message_current = 0;        // tells what position it is at in the array
message_end = 0             // gives the amount of dialog in the array
message_draw = "";          // what characters to draw at a time (updates based on var; increase)
message_length = 0          // length of current dialog line

// same as message, but for faces/emotions
emotions[0] = spr_nothing;  // array that holds facial expressions to be used with dialog
emotion_currentnum = 0;     // tells what face it should be on
emotion_current = emotions[emotion_currentnum];
char = undefined;           // what is the character (this will probably change later on in the dialog scripts)

// adds characters to the drawn amount
increase = 0.75;            // what is the speed to display text?
characters = 0;             // current amount of characters

// initializer for the 'switch flip' which allows dialog
global.dialog = false;      // is player interacting with the obj to generate dialog?

// variables to allow short pauses on periods and commas
talkcount = 0;
takepause = false;
pausecount = 5;
pausetalk = false;

// miscellanious variables to enable and assist drawing the dialog
draw = false;
asterisks = "*";
