maxCooldown = 60;//Max cooldown is 1 second since the game is 60 fps
cooldown = 0;

bulletType = PelletObject;//Denotes what type of bullet the gun uses

readyToFire = true;//When a weapon is created, it can be fired instantly

available = true;//Denotes whether the gun object is on the ground and available to be picked up

active = false;//Denotes whether this gun is currently active by the user