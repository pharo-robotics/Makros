as yet unclassified
indexOf: aVector
	| index |
	" Try to get an index "
	index := aVector asPoint - self zero + 1.
	(self isPointAvailableInCurrentWindow: index)
		ifTrue: [ ^ index ].
	" If the index is not inside the current window, we roll it"
	self roll: index.
	" Then, try to get an index again "
	index := aVector asPoint - self zero + 1.
	(self isPointAvailableInCurrentWindow: index)
		ifTrue: [ ^ index ].
	" Just one try. The given step"
	self error: 'Grid was not rolled properly'