TYPE AgitatorSettings :
STRUCT
	Enable: 			BOOL;				//
	AutoAgitate: 		BOOL; 				// A bit to activate auto agitating cycle.
	ReverseTime: 		TIME; 				// Agitator cycle time spent in reverse motion.
	DwellTime: 			TIME;   			// Agitator cycle time spent dwelling between reverse-forward motion.
	ForwardTime: 		TIME; 				// Agitator cycle time spent in forward motion.
	IdleTime: 			TIME;   	 		// Time spent idling between automatic agitator cycles.
END_STRUCT
END_TYPE
