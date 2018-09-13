accessing
at: aPoint put: aValue
	| value |
	value := aValue isSymbol
		ifTrue: [ SmallInteger perform: aValue ]
		ifFalse: [ aValue ].
	grid
		at: (self transformToOneDimensionIndex: (self writingIndexOf: aPoint))
		put: value