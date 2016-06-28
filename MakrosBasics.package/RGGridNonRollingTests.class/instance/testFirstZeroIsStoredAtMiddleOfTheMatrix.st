at the origin
testFirstZeroIsStoredAtMiddleOfTheMatrix
	grid at: GEO3DVector zero put: #freeSpace.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle