FUNCTION IO_Scale : REAL
VAR_INPUT
	Input: REAL;
	Input_Min: REAL;
	Input_Max: REAL;
	Output_Min: REAL;
	Output_Max: REAL;
END_VAR
VAR_OUTPUT
	Input_Error: BOOL := FALSE;
END_VAR
VAR
END_VAR

// --- BEGIN IMPLEMENTATION ---

IF Input < Input_Min OR Input > Input_Max THEN
	Input_Error := TRUE;
END_IF
IO_Scale := (Output_Max - Output_Min) * (Input - Input_Min) / (Input_Max - Input_Min) + Output_Min;
 