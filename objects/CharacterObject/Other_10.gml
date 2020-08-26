/// @description Switch weapons
weapons[currentWeapon].x = -100;
weapons[currentWeapon].y = -100;
currentWeapon = currentWeapon == 0 ? 1 : 0;
weapons[currentWeapon].cooldown = 2; //2 frame cooldown prevents offscreen bullets
weapons[currentWeapon].readyToFire = false;