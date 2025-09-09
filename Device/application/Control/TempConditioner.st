FUNCTION TempConditioner : REAL
VAR_INPUT
	TempInput: 			UINT;				//
END_VAR
VAR
END_VAR

// --- BEGIN IMPLEMENTATION ---

TempConditioner := UINT_TO_REAL(TempInput) / 10;