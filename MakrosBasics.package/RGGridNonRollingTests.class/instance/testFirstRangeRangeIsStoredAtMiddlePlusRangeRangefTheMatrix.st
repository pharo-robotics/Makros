range cm from origin
testFirstRangeRangeIsStoredAtMiddlePlusRangeRangefTheMatrix
	| val |
	val := GEO3DVector x: self range y: self range z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle + self range.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle