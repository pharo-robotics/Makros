plus
testFirst0RangePlus1IsStoredAtMiddle0RangeOfTheMatrixZeroPositionUpdated
	| val indexed |
	val := GEO3DVector x: 0 y: self range * 3 z: 1.
	indexed := 0 @ (self range * 3) + self middle.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle x @ (indexed y - (self step + grid sideSize) + 1).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle x @ ((self range * 3) - (self middle y + indexed y - (self step + grid sideSize)) + 1)