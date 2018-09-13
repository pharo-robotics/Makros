range cm from origin
testFirstMinus0RangeIsStoredAtMiddleMinus0RangefTheMatrix
	| val |
	val := GEO3DVector x: 0 y: -1 * self range z: 1.
	grid at: val put: #freeSpace.
	self assert: (grid indexOf: val) equals: self middle - (0 @ self range).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle.
	self deny: grid rolled > 0