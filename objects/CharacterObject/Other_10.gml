/// @description Switch weapons

//Places the location of the weapon the character is switching off of to a point off screen
weapons[currentWeapon].x = -100;
weapons[currentWeapon].y = -100;
//This statement is used to switch the index of the weapon the user currently has
currentWeapon = currentWeapon == 0 ? 1 : 0;
weapons[currentWeapon].cooldown = 2; //2 frame cooldown prevents offscreen bullets
weapons[currentWeapon].readyToFire = false;