{attribute 'qualified_only'}
VAR_GLOBAL
	// Outputs is a Global Variable List object to reference all PLC outputs
	
	
	// Digital Outputs
	// All new digital outputs designations are on the Weintek iR-ETN40R either Bank I Outputs or Bank II Outputs.
	// The former output designations are in parentheses based on the original 
	// Unitronics PLC labeled either N3 or N4 with a pin location and Output #.

	// iR-ETN40R Output Bank I
	// Output								Function										Physical Location (Former)
	AgitatorMotor: 		BOOL;				// Agitator motor output (to VFD). 				I-OUT0	(N3-OUT20)
	AgitatorReverse: 	BOOL;				// Agitator motor reverse output (to VFD). 		I-OUT1	(N3-OUT19)
	BagFeedMotor: 		BOOL;				// Bag feed motor output (to stepper motor). 	I-OUT2	(N3-OUT18)
	BagFeedReverse: 	BOOL;				// Bag feed motor reverse output (to stepper). 	I-OUT3	(N3-OUT17)
	BagFeedAlarmReset: 	BOOL;				// Reset bag feed motor alarm. 					I-OUT4 	(N3-OUT16)
	BlowerMotor: 		BOOL;				// Bag open blower motor output. 				I-OUT5 	(N3-OUT6)
	DoorLock: 			BOOL;				// Door lock output. 							I-OUT6 	(N3-OUT21)
	Heater: 			BOOL;				// Heating element output. 						I-OUT7 	(N4-OUT10)
	
	// iR-ETN40R Output Bank II
	// Output								Function										Physical Location (Former)
	HeatSealReverse: 	BOOL;				// Heat seal motor reverse output. 				II-OUT0 (N4-OUT5)							
	HeatSealBrake: 		BOOL;				// Heat seal motor brake output. 				II-OUT1 (N4-OUT3)
	HeatSealMotor: 		BOOL;				// Heat seal motor output. 						II-OUT2 (N4-OUT4)
	IceFeedMotor: 		BOOL;				// Ice feed auger output. 						II-OUT3 (N4-OUT11)
	KickerMotor: 		BOOL;				// Kicker motor output. 						II-OUT4 (N4-OUT13)
	KickerBrake: 		BOOL;				// Kicker motor brake output. 					II-OUT5 (N4-OUT12)
	MakeIce: 			BOOL;				// Signal to ice maker to make ice. 			II-OUT6 (N4-OUT22)
	// 										// Not Connected								II-OUT7

	
	// Analog Outputs
	// The following outputs are located on the iR-AM06-VI analog I/O module.
	// Output								Function										Physical Location (Former)
	AgitatorMotorSpeed: UINT;				// Agitator motor output speed.
	BagFeedMotorSpeed: 	UINT;				// Bag feed motor output speed.					OUT0
	
	
	// Register Values
	// The following outputs are Modbus registers written over the Modbus TCP/IP Connection with the iR-ETN40R Coupler.
	// Output								Function
	BagFeedMotorCounterLimit:   UDINT;		// The counter limit sets the maximum value for the Count Value
	//										   The counter limit is written to 0x0FB4 & 0x0FB5 as 2 Words (4 Bytes)
	BagFeedMotorRateChannel:    UINT;		// The rate channel is set to 1
	//										   The rate channel is written to 0x0FBD as 1 Word (2 Bytes)
	BagFeedMotorRateTime:       UINT;		// The rate time is set to 1000milliseconds
	//										   The rate time is written to 0x0FBC as 1 Word (2 Bytes)
	BagFeedMotorInputFunction:  UINT;		// The input function is set to 1 to enable simple pulse counting
	//										   The input function is written to 0x0FCC as 1 Word (2 Bytes)
	BagFeedMotorCounterCommand: UINT;		// The counter command is set to 0 to keep counting, 1 to stop counting, and 2 to clear count
	//										   The counter command is written to 0x0FAC as 1 Word (2 Bytes)

END_VAR