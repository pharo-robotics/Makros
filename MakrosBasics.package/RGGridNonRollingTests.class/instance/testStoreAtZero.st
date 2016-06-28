store
testStoreAtZero
	grid at: GEO3DVector zero put: #freeSpace.
	self assert: (grid at: GEO3DVector zero) isFreeSpace