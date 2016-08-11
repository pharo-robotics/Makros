at the origin
testFirstZeroIsStoredAtMiddleOfTheMatrix
	grid at: GEO3DVector zero put: #freeSpace.
	self assert: (grid readingIndexOf: GEO3DVector zero) equals: self middle.
	self deny: grid rolled > 0.