plus
testFirstRangePlus10IsStoredAtMiddleRange0OfTheMatrixZeroPositionUpdated
	| val indexed |
	val := GEO3DVector x: self range * 3 y: 0 z: 1.
	indexed := (self range * 3) @ 0 + self middle.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: (indexed x - (self step + grid sideSize) + 1) @ self middle y.
	self assert: (grid indexOf: GEO3DVector zero) equals: ((self range * 3) - (self middle x + indexed x - (self step + grid sideSize)) + 1) @ self middle y


