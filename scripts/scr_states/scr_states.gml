/// @description state machine

enum state{

    //ticket
    free,
    picked,

	//clock
	pause,
	running,
	
	//door
	opening,
	closing,
	closed,
	
	//passenger
	leaving,
	staying,
	
	//bus
	
	stopped,
	going,
	
	//cursor
	c_picking,
	c_free

}
