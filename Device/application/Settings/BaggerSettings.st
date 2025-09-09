TYPE BaggerSettings :
STRUCT
	MaxBagOpenRetries: 	UINT;				//
	MaxBagRetries: 		UINT;				//
	FirstAdvance: 		MotionCommand;		//
	FirstRetract: 		MotionCommand;		//
	RetryAdvance: 		MotionCommand;		//
	RetryRetract: 		MotionCommand;		//
	TearRetract: 		MotionCommand;		//
	RetractOneBag: 		MotionCommand;		//
	ResetBag: 			MotionCommand;		//
END_STRUCT
END_TYPE
