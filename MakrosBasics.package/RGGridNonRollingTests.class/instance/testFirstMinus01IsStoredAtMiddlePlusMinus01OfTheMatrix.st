1 cm from origin
testFirstMinus01IsStoredAtMiddlePlusMinus01OfTheMatrix
	| one |
	one := GEO3DVector x: 0 y: -1 z: -1.
	grid at: one put: #freeSpace.
	self assert: (grid indexOf: one) equals: self middle - (0 @ 1).
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle.
	self deny: grid rolled > 0.