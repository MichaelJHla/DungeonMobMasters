if (object_exists(MobObject)){
	//These vars are used to get all the needed sprite information. Number of lines could be reduced 
	// however with more vars, this is more readable
	var curMob = ds_list_find_value(LevelLogic.mobList, LevelLogic.curIndex);
	var curWeapon = curMob.weapons[curMob.currentWeapon];
	var weaponSprite = object_get_sprite(curWeapon.object_index);
	var weaponSpriteW = sprite_get_width(weaponSprite);
	var weaponSpriteH = sprite_get_height(weaponSprite);
	
	draw_sprite_stretched(weaponSprite, -1, 20, display_get_gui_height()-60, weaponSpriteW*4, weaponSpriteH*4);
	
	var cooldownProgress = curWeapon.cooldown / curWeapon.maxCooldown;
	var sizedCooldown = cooldownProgress * (weaponSpriteH * 5);
	
	draw_sprite_stretched(GenericOverlaySprite, -1, 10, display_get_gui_height()-60, weaponSpriteW*5, sizedCooldown);
}