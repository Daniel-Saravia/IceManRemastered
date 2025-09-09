{attribute 'qualified_only'}
VAR_GLOBAL 
	// Inputs is a Global Variable List object to reference all PLC inputs

	
	// Digital Inputs
	// All new digital input designations are on the Weintek iR-ETN40R either Bank I Inputs or Bank II Inputs.
	// The former input designations are in parentheses based on the original 
	// Unitronics PLC labeled either N3 or N4 with a pin location and Input #.
	
	// iR-ETN40R Input Bank I First Byte
	// Input								Function										Physical Location (Former)
	BagFull: 			BOOL; 				// The product bag is full of ice sensor input. I-IN0	(N4-11-IN6)
	BagOpen: 			BOOL; 				// The product bag is open sensor input. 		I-IN1	(N3-20-IN7)
	BagLabel: 			BOOL; 				// The product bag label sensor input. 			I-IN2	(N3-15-IN2)
	DoorClosed: 		BOOL; 				// Outside door is closed sensor input. 		I-IN3	(N3-21-IN8)
	DoorLocked: 		BOOL; 				// Door lock auxillary output plc input. 		I-IN4	(N3-22-IN9)
	HeatSealClosed: 	BOOL; 				// Heat seal closed position sensor input. 		I-IN5	(N4-2-IN0)
	HeatSealOpen: 		BOOL; 				// Heat seal open position sensor input. 		I-IN6	(N4-3-IN1)
	// 										// Not Connected								I-IN7
	
	// iR-ETN40R Input Bank I Second Byte
	// Input								Function										Physical Location (Former)
	HopperMaximum: 		BOOL; 				// Ice hopper max level sensor input. 			I-IN8 	(N4-10-IN5)
	HopperMinimum: 		BOOL; 				// Ice hopper min level sensor input. 			I-IN9	(N4-9-IN4)
	// BagFeedPulse							This is a physical input for high speed pulse	I IN10	(N3-13-IN0)
	//										The pulse and rate values are read from a Modbus register.
	// 										// Not Connected 								I IN11
	
	// iR-ETN40R Input Bank II First Byte
	// Input								Function										Physical Location (Former)
	KickerBlocked: 		BOOL; 				// Bag cleared from the kicker sensor input. 	II-IN0 (N4-17-IN7)
	KickerDown: 		BOOL; 				// Kicker in the down position sensor input.	II-IN1 (N4-4-IN2)
	KickerUp: 			BOOL; 				// Kicker in the up position sensor input. 		II-IN2 (N4-5-IN3)
	BagFeedAlarm: 		BOOL;				// Motor controller alarm on bag feed motor. 	II-IN3 (N3-14-IN1)
	// 										// Not Connected 								II-IN4
	// 										// Not Connected 								II-IN5
	// 										// Not Connected 								II-IN6
	// 										// Not Connected 								II-IN7
	
	// iR-ETN40R Input Bank II Second Byte
	// Input								Function										Physical Location (Former)
	// 										// Not Connected 								II-IN8
	// 										// Not Connected 								II-IN9
	// 										// Not Connected 								II-IN10
	// 										// Not Connected 								II-IN11

	
	// Analog Temperature Inputs
	// The following inputs are located on the iR-AI04-TR analog temperature input module.
	// Input								Function										Physical Location		
	HeatSealTemperature: UINT; 				// Heat seal thermocouple.						IN0
	ProductTemperature:  UINT;				// Product temperature.							IN1
	
	
	// High Speed Input - Register Values
	// The following inputs are Modbus registers read over the Modbus TCP/IP Connection with the iR-ETN40R Coupler.
	// Input								Function
	BagFeedMotorCount: 	UDINT;				// Counter value of the high speed input read from Modbus Register
	//							   			   The Counter Value is read from 0x0FA0 & 0x0FA1 as 2 Words (4 Bytes)
	BagFeedMotorRate: 	UDINT;				// Rate value of the high speed input read from the Modbus Register
	//										   The Rate Value is read from 0x0FBE & 0x0FBF as 2 Words (4 Bytes)

END_VAR