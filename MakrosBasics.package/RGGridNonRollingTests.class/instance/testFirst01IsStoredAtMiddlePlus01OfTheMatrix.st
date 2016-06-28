1 cm from origin
testFirst01IsStoredAtMiddlePlus01OfTheMatrix
	| val |
	val := GEO3DVector x: 0 y: 1 z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle + (0 @ 1).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle