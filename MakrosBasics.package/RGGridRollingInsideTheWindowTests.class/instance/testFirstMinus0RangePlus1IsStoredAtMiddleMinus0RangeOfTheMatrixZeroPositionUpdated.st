minus
testFirstMinus0RangePlus1IsStoredAtMiddleMinus0RangeOfTheMatrixZeroPositionUpdated
	| val newZeroShift newZeroPosition |
	val := GEO3DVector x: 0 y: -1 * (self range + 1) z: 1.
	grid at: val put: #freeSpace.
	newZeroShift := self middle - (0 @ self step).
	newZeroPosition := self middle + (0 @ (self step + 1)).
	self assert: (grid indexOf: val) equals: self middle x @ (self range - newZeroShift y).
	self assert: (grid indexOf: GEO3DVector zero) equals: newZeroPosition