plus
testFirst0RangePlus1IsStoredAtMiddle0RangeOfTheMatrixZeroPositionUpdated
	| val indexed |
	val := GEO3DVector x: 0 y: self range * 3 z: 1.
	indexed := 0 @ (self range * 3) - self middle negated.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle x @ (indexed y - (self step + grid sideSize)).
	self assert: grid zero equals: self middle x negated @ (self middle y negated - (self dimension - indexed y + self step negated))