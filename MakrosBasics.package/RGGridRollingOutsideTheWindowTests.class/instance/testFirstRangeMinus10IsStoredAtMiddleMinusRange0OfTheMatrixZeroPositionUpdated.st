minus
testFirstRangeMinus10IsStoredAtMiddleMinusRange0OfTheMatrixZeroPositionUpdated
	| val indexed newZero |
	val := GEO3DVector x: -1 * (self range * 3) y: 0 z: 1.
	grid at: val put: #freeSpace.
	indexed := val asPoint - self middle negated.
	newZero := (self middle x negated - (indexed x abs + self step)) @ self middle y negated.
	self assert: grid zero equals: newZero.
	self assert: (grid indexOf: val) equals: val asPoint - newZero