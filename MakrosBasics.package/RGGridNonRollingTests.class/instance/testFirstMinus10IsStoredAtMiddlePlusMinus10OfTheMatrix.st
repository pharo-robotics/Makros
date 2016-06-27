1 cm from origin
testFirstMinus10IsStoredAtMiddlePlusMinus10OfTheMatrix
	| one |
	one := GEO3DVector x: -1 y: 0 z: -1.
	grid at: one put: #free.
	self assert: (grid indexOf: one) equals: self middle - (1 @ 0).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle