/// @description time flow

if(state == state.running){

	global.time_m += 1/240;
	
	if(global.time_m >= 60){
	
		global.time_h ++;
		global.time_m = 0;
		
		if(global.time_h >= 24){
		
			global.time_h = 0;
		
		}
	
	}

}

//format time

if(floor(global.time_m)<10){

	global.stime_m = "0" + string(floor(global.time_m));

}else{

	global.stime_m = string(floor(global.time_m));

}

if(floor(global.time_h)<10){

	global.stime_h = "0" + string(floor(global.time_h));

}else{

	global.stime_h = string(floor(global.time_h));

}

global.time = global.stime_h + ":" + global.stime_m;
