private
transformToOneDimensionIndex: bidimensional
	^ bidimensional x asInteger + 1 + (bidimensional y asInteger * self sideSize)