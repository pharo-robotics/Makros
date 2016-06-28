range cm from origin
testFirstPlusRange0IsStoredAtMiddlePlusRange0fTheMatrix
	| val |
	val := GEO3DVector x: self range y: 0 z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle + (self range @ 0).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle