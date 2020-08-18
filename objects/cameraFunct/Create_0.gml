camera = camera_create(); //Create a new camera
cameraWidth = 1600;
cameraHeight = 900;

//Choose which viewport to use
view_camera[0] = camera;

//Needs a value to initialize
//This variable is used to follow an object around and can be changed
//An enemy object will be used in this
follow = basicEnemyObject;

//Sets a default value
//These variables are going to be set to what the camera will try and reach
xTo = x;
yTo = y;

//This boolean statement is used to tell the camera to follow an enemy object or the player object
followPlayerObj = true;

//This is the denominator value for the transition of the camera.
//The lower the number the faster the transition speed
cameraTransitionSpeed = 12;