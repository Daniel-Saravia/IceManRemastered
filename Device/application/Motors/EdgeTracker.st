FUNCTION_BLOCK EdgeTracker
VAR_INPUT
	Trigger: 			BOOL;				//
	Triggers: 			UINT;				//
	Count: 				UDINT;				//
END_VAR
VAR_OUTPUT
	Edges: 				ARRAY[0..100] OF UDINT;
END_VAR
VAR
END_VAR

// --- BEGIN IMPLEMENTATION ---

IF Trigger = TRUE THEN
	Edges[Triggers]:=Count;
END_IF