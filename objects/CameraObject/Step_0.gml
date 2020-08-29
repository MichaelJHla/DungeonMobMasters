if (ds_list_size(LevelLogic.mobList)){
	follow = ds_list_find_value(LevelLogic.mobList, LevelLogic.curIndex);

	x = ((follow.x*3) + mouse_x)/4;
	y = ((follow.y*3) + mouse_y)/4;

	var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	camera_set_view_mat(camera, vm);
}