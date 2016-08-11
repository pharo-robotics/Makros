as yet unclassified
zeroOrGap: aPoint
	| x y |
	x := aPoint x.
	y := aPoint y.
	x := (x between: 0 and: self sideSize - 1)
		ifTrue: [ 0 ]
		ifFalse: [ x < 0
				ifTrue: [ x abs + step ]
				ifFalse: [ self sideSize - x + step negated ] ].
	y := (aPoint y between: 0 and: self sideSize - 1)
		ifTrue: [ 0 ]
		ifFalse: [ y < 0
				ifTrue: [ y abs + step ]
				ifFalse: [ self sideSize - y + step negated ] ].
	^ x @ y