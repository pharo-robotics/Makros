as yet unclassified
testFirstMinus0RangePlus1IsStoredAtMiddleMinus0RangeOfTheMatrixZeroPositionUpdated
	| val |
	val := GEO3DVector x: 0 y: -1 * (self range + 1) z: 1.
	grid at: val put: #free.
	self assert: (grid indexOf: val) equals: self middle - (0 @ self range).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle - (0 @ self step)