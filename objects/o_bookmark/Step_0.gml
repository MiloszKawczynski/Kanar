/// @description pressing

if(mouse_check_button_pressed(mb_left)){
    
	if(collision_point(mouse_x,mouse_y,id,0,0)){
        
		if(o_menu.pagenr != pagenr){
		
			o_menu.swap = true;
			o_menu.pagenr = pagenr;
		
		}
            
	}
    
}