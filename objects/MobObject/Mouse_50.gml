if (selected){ //If the user is selected
	with (weapons[currentWeapon]){//This fires the gun in inventory slot 1
		if (readyToFire){
			event_user(0);
		}
	}
}