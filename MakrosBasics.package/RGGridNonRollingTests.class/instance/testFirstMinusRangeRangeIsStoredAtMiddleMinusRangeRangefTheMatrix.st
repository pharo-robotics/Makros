range cm from origin
testFirstMinusRangeRangeIsStoredAtMiddleMinusRangeRangefTheMatrix
	| val |
	val := GEO3DVector x: -1 * self range y: -1 * self range z: 1.
	grid at: val put: #free.
	self assert: (grid indexOf: val) equals: self middle - self range.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle