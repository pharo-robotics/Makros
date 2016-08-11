minus
testFirstRangeMinus11IsStoredAtMiddleMinusRangeRangeOfTheMatrixZeroPositionUpdated
	| val indexed newZero |
	val := GEO3DVector x: -1 * (self range * 3) y: -1 * (self range * 3) z: 1.
	grid at: val put: #freeSpace.
	indexed := (self range * 3 * -1) asPoint - self middle negated.
	newZero := self middle negated - (indexed abs + self step).
	self assert: grid zero equals: newZero.
	self assert: (grid indexOf: val) equals: val asPoint - newZero.