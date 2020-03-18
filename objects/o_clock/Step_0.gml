/// @description time flow

if(state == state.running){

	time_m += 1/60;
	
	if(time_m >= 60){
	
		time_h ++;
		time_m = 0;
		
		if(time_h >= 24){
		
			time_h = 0;
		
		}
	
	}

}

//format time

if(floor(time_m)<10){

	stime_m = "0" + string(floor(time_m));

}else{

	stime_m = string(floor(time_m));

}

if(floor(time_h)<10){

	stime_h = "0" + string(floor(time_h));

}else{

	stime_h = string(floor(time_h));

}

time = stime_h + ":" + stime_m;
