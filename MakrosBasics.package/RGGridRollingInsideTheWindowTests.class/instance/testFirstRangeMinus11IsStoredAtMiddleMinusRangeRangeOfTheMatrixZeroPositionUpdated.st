minus
testFirstRangeMinus11IsStoredAtMiddleMinusRangeRangeOfTheMatrixZeroPositionUpdated
	| val newZeroShift newZeroPosition |
	val := GEO3DVector x: -1 * (self range + 1) y: -1 * (self range + 1) z: 1.
	grid at: val put: #freeSpace.
	newZeroShift := self middle - self step asPoint.
	newZeroPosition := self middle + self step asPoint + 1.
	self assert: (grid indexOf: val) equals: self range asPoint - newZeroShift.
	self assert: (grid indexOf: GEO3DVector zero) equals: newZeroPosition