1 cm from origin
testFirst10IsStoredAtMiddlePlus10OfTheMatrix
	| val |
	val := GEO3DVector x: 1 y: 0 z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle + (1 @ 0).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle.
	self deny: grid rolled > 0.