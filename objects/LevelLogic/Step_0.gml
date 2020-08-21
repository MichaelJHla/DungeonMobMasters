//Keyboard controls for the number keys to switch between the mobs
if (keyboard_check(ord("1"))){
	if (ds_list_size(mobList) >= 1){
		curIndex = 0;
		event_user(0);
	}
} else if (keyboard_check(ord("2"))){
	if (ds_list_size(mobList) >= 2){
		curIndex = 1;
		event_user(0);
	}
} else if (keyboard_check(ord("3"))){
	if (ds_list_size(mobList) >= 3){
		curIndex = 2;
		event_user(0);
	}
} else if (keyboard_check(ord("4"))){
	if (ds_list_size(mobList) >= 4){
		curIndex = 3;
		event_user(0);
	}
} else if (keyboard_check(ord("5"))){
	if (ds_list_size(mobList) >= 5){
		curIndex = 4;
		event_user(0);
	}
} else if (keyboard_check(ord("6"))){
	if (ds_list_size(mobList) >= 6){
		curIndex = 5;
		event_user(0);
	}
} else if (keyboard_check(ord("7"))){
	if (ds_list_size(mobList) >= 7){
		curIndex = 6;
		event_user(0);
	}
} else if (keyboard_check(ord("8"))){
	if (ds_list_size(mobList) >= 8){
		curIndex = 7;
		event_user(0);
	}
} else if (keyboard_check(ord("9"))){
	if (ds_list_size(mobList) >= 9){
		curIndex = 8;
		event_user(0);
	}
}