plus
testFirstRangePlus11IsStoredAtMiddleRangeRangeOfTheMatrixZeroPositionUpdated
	| val  indexed |
	val := GEO3DVector x: self range * 3 y: self range * 3 z: 1.
	indexed := (self range * 3) asPoint + self middle.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: indexed - (self step + grid sideSize) + 1.
	self assert: (grid indexOf: GEO3DVector zero) equals: (self range * 3) - (self middle + indexed - (self step + grid sideSize)) + 1