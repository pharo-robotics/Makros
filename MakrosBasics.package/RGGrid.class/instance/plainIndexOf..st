private
plainIndexOf: aVector
	| bidimensional xabsolute yabsolute |
	bidimensional := self indexOf: aVector.
	^ bidimensional x + ((bidimensional y - 1) * self sideSize)