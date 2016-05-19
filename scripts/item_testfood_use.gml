/// item_testfood_use

item_stats = item_testfood();

if (health + item_stats[1] > global.maxhp) {
    health = global.maxhp;
    starcount = 2;
    heal = "You ate the testfood.# Your HP was maxed out."
} else {
    health += item_stats[1];
    starcount = 2;
    heal = "Using the testfood restored you to " + health + " HP."
}
audio_play_sound(snd_item_default,10,false);

return heal;
