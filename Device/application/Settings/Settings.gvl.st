{attribute 'qualified_only'}
VAR_GLOBAL PERSISTENT RETAIN
	// Components
	Agitator: AgitatorSettings;
	Bagger: BaggerSettings;
	Door: DoorSettings;
	Heater: HeaterSettings;
	HeatSeal: HeatSealSettings;
	Hopper: HopperSettings;
	IceFeed: IceFeedSettings;
	IceMaker: IceMakerSettings;
	Kicker: KickerSettings;
	
	// Motors
	AgitatorMotor: MotorSettings;
	BagFeedMotor: BagFeedMotorSettings;
	BlowerMotor: MotorSettings;
	HeatSealMotor: MotorSettings;
	IceFeedMotor: MotorSettings;
	KickerMotor: MotorSettings;
	
	// Sensors
	BagFullSensor: SensorSettings;
	BagOpenSensor: SensorSettings;
	BagLabelSensor: SensorSettings;
	DoorClosedSensor: SensorSettings;
	DoorLockedSensor: SensorSettings;
	HeatSealClosedSensor: SensorSettings;
	HeatSealOpenSensor: SensorSettings;
	HopperMaximumSensor: SensorSettings;
	HopperMinimumSensor: SensorSettings;
	KickerBlockedSensor: SensorSettings;
	KickerDownSensor: SensorSettings;
	KickerUpSensor: SensorSettings;
	
	// Global
	Retained: BOOL;
END_VAR