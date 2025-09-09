TYPE HeaterSettings :
STRUCT
	Enable: 			BOOL;				//
	MinTemp: 			REAL;      			// Minimum allowable temperature.
	LowPoint: 			REAL;				// The low point temperature where the heater comes on.
	SetPoint: 			REAL;				// The set point temperature where the heater turns off.
	MaxTemp: 			REAL;				// The maximum allowable temperature.
	Timeout: 			TIME;				// The time allowable for the heater to come up to temperature.
	ResetTimeout: 		BOOL;				// A bit which when TRUE resets the timeout.
END_STRUCT
END_TYPE
