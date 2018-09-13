minus
testFirstMinus0RangePlus1IsStoredAtMiddleMinus0RangeOfTheMatrixZeroPositionUpdated
	| val indexed newZero |
	val := GEO3DVector x: 0 y: -1 * (self range * 3) z: 1.
	grid at: val put: #freeSpace.
	indexed := val asPoint - self middle negated.
	newZero := self middle x negated @ (self middle y negated - (indexed y abs + self step)).
	self assert: grid zero equals: newZero.
	self assert: (grid indexOf: val) equals: val asPoint - newZero