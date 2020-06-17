camera = camera_create(); //Create a new camera

//The matrices needed to properly place the camera
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(1200, 675, 1, 10000);

//Sets the matrices to the camera
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

//Choose which viewport to use
view_camera[0] = camera;

//Needs a value to initialize
//This variable is used to follow an object around and can be changed
//An enemy object will be used in this
follow = basicEnemyObject;

//Sets a default value
xTo = x;
yTo = y;

//This boolean statement is used to tell the camera to follow an enemy object or the player object
followPlayerObj = true;

//This is the denominator value for the transition of the camera.
//The lower the number the faster the transition speed
cameraTransitionSpeed = 15;