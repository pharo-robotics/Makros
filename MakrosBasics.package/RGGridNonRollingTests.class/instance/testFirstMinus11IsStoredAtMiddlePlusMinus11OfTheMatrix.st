1 cm from origin
testFirstMinus11IsStoredAtMiddlePlusMinus11OfTheMatrix
	| one |
	one := GEO3DVector x: -1 y: -1 z: -1.
	grid at: one put: #freeSpace.
	self assert: (grid indexOf: one) equals: self middle - 1.
	self assert: (grid indexOf: GEO3DVector zero) equals: self middle