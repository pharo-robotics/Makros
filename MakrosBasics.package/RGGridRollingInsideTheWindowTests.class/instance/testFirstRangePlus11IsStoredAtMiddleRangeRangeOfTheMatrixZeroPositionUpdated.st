plus
testFirstRangePlus11IsStoredAtMiddleRangeRangeOfTheMatrixZeroPositionUpdated
	| val newZeroShift |
	val := GEO3DVector x: self range + 1 y: self range + 1 z: 1.
	grid at: val put: #freeSpace.
	newZeroShift := self middle - self step asPoint.
	self assert: (grid indexOf: val) equals: self middle + newZeroShift.
	self assert: (grid indexOf: GEO3DVector zero) equals: newZeroShift - 1