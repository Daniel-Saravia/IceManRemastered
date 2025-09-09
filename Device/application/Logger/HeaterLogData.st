TYPE HeaterLogData :
STRUCT
	LowTempFault: BOOL;		// Outputs TRUE if the heater does not come up to minimum temp within the timeout.
	HighTempFault: BOOL;	// Outputs TRUE if the heater gets too hot.
	TimeBelowMinTemp: TIME; // Time spent below minimum temp since last reset or enable.
END_STRUCT
END_TYPE
