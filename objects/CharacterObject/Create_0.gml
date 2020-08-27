maxHp = 10; //The default max hp for any character is 10
curHp = maxHp;

spd = 5; //The default speed for any chatacter is 5

//These variables will be used to determine if the player is moving in a positive or 
// negative direction on any specific axis
horizMoveMult = 0;
vertMoveMult = 0;

//Makes the default weapon for any character the pea shooter
weapons[0] = instance_create_depth(-100, -100, 0, PeaShooterObject);
weapons[1] = instance_create_depth(-100, -100, 0, ShotgunObject);

//This indicates which weapon is currently being used
currentWeapon = 0;