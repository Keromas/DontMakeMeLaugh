#macro LEFT 0
#macro RIGHT 1

spd = 1.25;
dir = 0;

originalX = x - 150;
originalY = y;

destinationX = x + 150;
destinationY = y;

side = LEFT;

is_striking = false;
strike_time = 60 * 3;
delay_creation_button = 30;

distance_zone_close = 100;
distance_zone_middle = 200;
distance_zone_far = 200;

patience_increaser_huge = 3;
patience_increaser_small = 1;
patience_increaser_chance = 40;