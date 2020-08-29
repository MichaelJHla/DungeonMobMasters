if (ds_list_size(LevelLogic.mobList)){ //Makes sure that a mob exists to be followed
	//Follow the currently highlighted character
	follow = ds_list_find_value(LevelLogic.mobList, LevelLogic.curIndex);
	
	//Center the character more in the screen by multiplying the location of the mob by 3
	x = ((follow.x*3) + mouse_x)/4;
	y = ((follow.y*3) + mouse_y)/4;
	
	//Set camera
	var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	camera_set_view_mat(camera, vm);
}