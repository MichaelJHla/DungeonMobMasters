//Used for smooth camera movement when the camera follow is changed
//The lower the denominator, the faster the camera
x += (xTo - x)/cameraTransitionSpeed;
y += (yTo - y)/cameraTransitionSpeed;

//The clamp funct is used to make the camera not able to go out of the bounds of the room
x = clamp(x, cameraWidth/2, room_width - (cameraWidth/2));
y = clamp(y, cameraHeight/2, room_height - (cameraHeight/2));

//if statement that follows either the player object (if it exists) or the current enemy object
if (followPlayerObj && instance_exists(playerObject)){
	//These two lines make the camera center on the player object
	xTo = playerObject.x;
	yTo = playerObject.y;
} else {
	//These two lines make it so the camera is set towards the mouse, from the selected enemy object
	xTo = (follow.x*3 + mouse_x)/4;
	yTo = (follow.y*3 + mouse_y)/4;
}

//This if statement makes it so that if the tab button is held down the whole room can be viewed
if (keyboard_check(vk_tab)){
	var vm = matrix_build_lookat(room_width/2, room_height/2, -10, room_width/2, room_height/2, 0, 0, 1, 0);
	var pm = matrix_build_projection_ortho(room_width, room_height, 1, 10000);
} else { //Otherwise, the camera will follow either the player object or the selected enemy
	//Update the matrix of the camera
	var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	var pm = matrix_build_projection_ortho(cameraWidth, cameraHeight, 1, 10000);
}

//Sets the matrices to the camera
camera_set_proj_mat(camera, pm);
camera_set_view_mat(camera, vm);