range cm from origin
testFirstPlus0RangeIsStoredAtMiddlePlus0RangeOfTheMatrix
	| val |
	val := GEO3DVector x: 0 y: self range z: 1.
	grid at: val put: #free.
	self assert: (grid indexOf: val) equals: self middle + (0 @ self range).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle