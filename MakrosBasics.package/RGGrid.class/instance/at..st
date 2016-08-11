accessing
at: aPoint
	| index |
	index := self readingIndexOf: aPoint.
	^ (self isPointAvailableInCurrentWindow: index)
		ifTrue: [ grid at: (self transformToOneDimensionIndex: index) ]
		ifFalse: [ self unknownValue ]