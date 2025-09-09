FUNCTION_BLOCK GearBox
VAR_INPUT
	InputSpeed: REAL;
	In: INT;
	Out: INT;
END_VAR
VAR_OUTPUT
	OutputSpeed: REAL;
END_VAR
VAR
END_VAR
// --- BEGIN IMPLEMENTATION ---

OutputSpeed := InputSpeed * Out/In;