//this boolean represents if the character is the active character
clicked = false;

//this represents the speed that an enemy object will go
spd = 8;

//These represent the movement multipliers
horizMult = 0;
vertMult = 0;

//This represents collision speed to allow the user to walk even if they are colliding with an object
collisionSpd = spd + 2;

//This represents the health value of the enemy character
maxHp = 10;
hp = maxHp;

//When any enemy is made, it is added to the list of enemies
ds_list_add(global.enemyList, id);