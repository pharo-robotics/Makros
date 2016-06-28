private
plainIndexOf: aVector
	| bidimensional |
	bidimensional := self indexOf: aVector.
	^ bidimensional x + ((bidimensional y - 1) * self sideSize)