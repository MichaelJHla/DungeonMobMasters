//Used for smooth camera movement when the camera follow is changed
//The lower the denominator, the faster the camera
x += (xTo - x)/cameraTransitionSpeed;
y += (yTo - y)/cameraTransitionSpeed;

//if statement that follows either the player object or the current enemy object
if (followPlayerObj && instance_exists(playerObject)){
	xTo = playerObject.x;
	yTo = playerObject.y;
} else {
	xTo = follow.x;
	yTo = follow.y;
}

//Update the matrix inside the camera
//The first two lines are to make it so the camera does not go out of bounds
// x = clamp(x, camera_width/2, room_width-(camera_width/2))
// the same for y, just replace x with y and width with height
x = clamp(x, cameraWidth/2, room_width - (cameraWidth/2));
y = clamp(y, cameraHeight/2, room_height - (cameraHeight/2));
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(cameraWidth, cameraHeight, 1, 10000);

//Sets the matrices to the camera
camera_set_proj_mat(camera, pm);
camera_set_view_mat(camera, vm);

//This if statement makes it so that if the tab button is held down the whole room can be viewed
if (keyboard_check(vk_tab)){
	var vm = matrix_build_lookat(room_width/2, room_height/2, -10, room_width/2, room_height/2, 0, 0, 1, 0);
	var pm = matrix_build_projection_ortho(room_width, room_height, 1, 10000);

	//Sets the matrices to the camera
	camera_set_proj_mat(camera, pm);
	camera_set_view_mat(camera, vm);
}