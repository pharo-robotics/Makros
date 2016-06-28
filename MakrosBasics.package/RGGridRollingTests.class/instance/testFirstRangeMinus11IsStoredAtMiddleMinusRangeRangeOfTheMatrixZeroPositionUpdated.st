minus
testFirstRangeMinus11IsStoredAtMiddleMinusRangeRangeOfTheMatrixZeroPositionUpdated
	| val |
	val := GEO3DVector x: -1 * (self range + 1) y: -1 * (self range + 1) z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle - self range.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle - self step