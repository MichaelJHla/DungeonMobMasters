if (other.available){
	if (keyboard_check(ord("E")) && selected){//If the user is pressing E and the mob is selected
		instance_destroy(weapons[currentWeapon]);//Destroy the weapon the user is currently holding
		weapons[currentWeapon] = other;//Add new weapon to the user's inventory
		other.available = false;//Mark the weapon the user just grabbed as unavailable
	}
}