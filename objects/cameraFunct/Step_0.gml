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
x = clamp(x, 600, 2000 - 600);
y = clamp(y, 338, 2000 - 338);
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);