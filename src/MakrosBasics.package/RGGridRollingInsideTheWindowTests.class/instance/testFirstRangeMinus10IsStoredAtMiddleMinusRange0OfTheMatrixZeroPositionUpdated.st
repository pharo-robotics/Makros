minus
testFirstRangeMinus10IsStoredAtMiddleMinusRange0OfTheMatrixZeroPositionUpdated
	| val newZeroShift newZeroPosition |
	val := GEO3DVector x: -1 * (self range + 1) y: 0 z: 1.
	grid at: val put: #freeSpace.
	newZeroShift := self middle - (self step @ 0).
	newZeroPosition := self middle + ((self step+1) @ 0).
	self assert: (grid indexOf: val) equals: (self range - newZeroShift x) @ self middle y.
	self assert: (grid indexOf: GEO3DVector zero) equals: newZeroPosition