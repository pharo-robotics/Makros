range cm from origin
testFirstRangeRangeIsStoredAtMiddlePlusRangeRangefTheMatrix
	| val |
	val := GEO3DVector x: self range - 1 y: self range - 1 z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle + self range - 1.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle.
	self deny: grid rolled > 0