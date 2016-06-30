minus
testFirstRangeMinus11IsStoredAtMiddleMinusRangeRangeOfTheMatrixZeroPositionUpdated
	| val indexed |
	val := GEO3DVector x: -1 * (self range * 3) y: -1 * (self range * 3) z: 1.
	grid at: val put: #freeSpace.
	indexed := (self range * 3 * -1) asPoint + self middle.
	self halt .
	self assert: (grid indexOf: val) equals: indexed abs - self step - self middle + indexed.
	self assert: (grid indexOf: GEO3DVector zero) equals: indexed abs - self step - self middle