/// @description time flow


if(state == state.running){

	global.time += 1/240;
	
	if(global.time >= 1440){
	
		global.time = 0;
		global.day ++;
		
		if(global.day > 30){
		
			global.day = 1;
			global.month ++;
			
			if(global.month > 12){
		
				global.month = 1;
				global.year ++;
		
			}
		
		}
	
	}

}

if(floor(global.time%60)<10){
	
	s_time = string(floor(global.time/60))+":0"+string(floor(global.time%60));
	
}else{
	
	s_time = string(floor(global.time/60))+":"+string(floor(global.time%60));
	
}
