/// scr_getinput
// Calling this script will return a four bit binary number
// Each digit of the binary number represents one of four arrows
// 0000 - 1111 Each binary number will represent one combination
// of all possible arrow combinations. GM has some limitations on
// Which buttons can be held together, so the code that responds to
// this code must be tested and adjusted to reflect that.
return  (keyboard_check(vk_left)<<3) | (keyboard_check(vk_right)<<2) | (keyboard_check(vk_up)<<1) | (keyboard_check(vk_down));
