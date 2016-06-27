store
testStoreAtZero
	grid at: GEO3DVector zero put: #free.
	self assert: (grid at: GEO3DVector zero) equals: #free