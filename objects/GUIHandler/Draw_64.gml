if (object_exists(MobObject)){
	var curMob = ds_list_find_value(LevelLogic.mobList, LevelLogic.curIndex);
	var curWeapon = curMob.weapons[curMob.currentWeapon];
	
	draw_sprite(object_get_sprite(curWeapon.object_index), -1, 20, 20);
}