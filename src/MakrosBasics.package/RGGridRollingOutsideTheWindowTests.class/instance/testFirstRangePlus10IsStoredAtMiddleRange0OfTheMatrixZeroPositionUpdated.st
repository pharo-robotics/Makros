plus
testFirstRangePlus10IsStoredAtMiddleRange0OfTheMatrixZeroPositionUpdated
	| val indexed |
	val := GEO3DVector x: self range * 3 y: 0 z: 1.
	indexed := (self range * 3) @ 0 - self middle negated.
	grid at: val put: #freeSpace.
	self assert: grid zero equals: (self middle x negated - (self dimension - indexed x + self step negated)) @ self middle y negated.
	self assert: (grid indexOf: val) equals: (indexed x - (self step + grid sideSize)) @ self middle y