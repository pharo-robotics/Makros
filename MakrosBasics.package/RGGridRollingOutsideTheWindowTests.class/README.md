"zeroOrGap: aPoint
	| x y |
	x := aPoint x.
	y := aPoint y.
	x := (x between: 1 and: self sideSize)
		ifTrue: [ 0 ]
		ifFalse: [ x < 1
				ifTrue: [ x abs + step ]
				ifFalse: [ self sideSize - x + step negated ] ].
	y := (aPoint y between: 1 and: self sideSize)
		ifTrue: [ 0 ]
		ifFalse: [ y < 1
				ifTrue: [ y abs + step ]
				ifFalse: [ self sideSize - y + step negated ] ].
	^ x @ y"