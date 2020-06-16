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
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);