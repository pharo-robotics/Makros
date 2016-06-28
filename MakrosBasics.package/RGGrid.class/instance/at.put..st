as yet unclassified
at: aPoint put: aValue
	| value |
	value := aValue isSymbol
		ifTrue: [ SmallInteger perform: aValue ]
		ifFalse: [ aValue ].
	grid at: (self plainIndexOf: aPoint) put: value