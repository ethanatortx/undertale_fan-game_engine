/// item_testfood_use

item_stats = item_testfood();

if (health + item_stats[1] > global.maxhp) {
    health = global.maxhp;
    heal = "Using the testfood restored you to max HP."
} else {
    health += item_stats[1];
    heal = "Using the testfood restored you to " + health + " HP."
}


return heal;
