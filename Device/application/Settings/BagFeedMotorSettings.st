TYPE BagFeedMotorSettings :
STRUCT
	Enable: 			BOOL;				//
	InputFunction: 		UINT;				//
	CounterLimit: 		UDINT;				//
	RateTime: 			UINT;				//
	RateChannel: 		UINT;				//
	Speed: 				UINT;				//
	//GearRatio: 		UINT;
	//PPR: 				UINT;
	MaxRPM: 			UINT;				//
	CounterCommand: 	UINT; 				// 0 = Keep Counting, 1 = Stop Counting, 2 = Clear Count
	KP: 				REAL;				//
	TN: 				REAL;				//
	TV: 				REAL;				//
	Y_MIN: 				UINT; 				// Minimum speed in RPM
	Y_MAX: 				UINT; 				// Maximum speed in RPM
	//BagLengthPulses: 	UINT;	
END_STRUCT
END_TYPE
