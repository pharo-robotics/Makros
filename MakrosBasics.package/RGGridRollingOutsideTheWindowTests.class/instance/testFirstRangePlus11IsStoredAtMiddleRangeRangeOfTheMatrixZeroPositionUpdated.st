plus
testFirstRangePlus11IsStoredAtMiddleRangeRangeOfTheMatrixZeroPositionUpdated
	| val indexed |
	val := GEO3DVector x: self range * 3 y: self range * 3 z: 1.
	indexed := (self range * 3) asPoint - self middle negated.
	grid at: val put: #freeSpace.
	self
		assert: grid zero
		equals: self middle negated - (self dimension - indexed + self step negated).
	self assert: (grid indexOf: val) equals: indexed - (self step + grid sideSize)