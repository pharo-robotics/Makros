at the origin
testFirstZeroIsStoredAtMiddleOfTheMatrix
	grid at: GEO3DVector zero put: #free.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle