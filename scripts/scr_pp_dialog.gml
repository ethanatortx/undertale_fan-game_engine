font = argument0; //The font resource the the dialog will be written in
line = string_copy(argument1,1,string_length(argument1)); //The dialog being preprocessed
width = argument2-argument3; //The width of the textbox the dialog is being fitted for
                             //argument3 defines how close to the edge the word has to be before it wraps

draw_set_font(font); //for string_width to work correctly, draw system must be set in font being used
count = 0; //keeps track of the number of spaces
sindex = string_pos(" ", line);//finds the first space
while(sindex !=0) { //loops through, seperating by spaces
    word[count] = string_copy(line, 1, sindex-1);
    line = string_copy(line, sindex+1, string_length(line));
    sindex = string_pos(" ", line);
    count++;
}
word[count]=line; //Final word and punctuation is left in 'line'
linecount = 0; //keeps track of line count
wordcount = 0; //keeps track of how many words have been placed
wordline[0] = ""; //seed line to prevent undefined error
while(wordcount <= count) { //while we still have words left
    if(string_width(wordline[linecount]) < width) {
        wordline[linecount] = wordline[linecount] + " " + word[wordcount];
    }
    else {
        linecount++;
        wordline[linecount] = word[wordcount];
    }
    wordcount++;
}
finalline = ""; //final processed line
for(var a = 0; a < array_length_1d(wordline); a++) {
    finalline =finalline+ wordline[a] + "# ";
}
word = 0; // junk cleaning for the next use of the script
wordline = 0; // if this isn't done, it can result in some funky stuff happening.
return finalline;
