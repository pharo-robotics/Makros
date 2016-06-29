as yet unclassified
zeroOrGap: aPoint
	| x y negaZero |
	x := aPoint x.
	y := aPoint y.
	negaZero := zero negate.
	x := (x between: negaZero x and: negaZero x + self sideSize)
		ifTrue: [ 0 ]
		ifFalse: [ x < negaZero x
				ifTrue: [ x abs + step ]
				ifFalse: [ x abs + step negated ] ].
	y := (aPoint y between: negaZero y and: negaZero y + self sideSize)
		ifTrue: [ 0 ]
		ifFalse: [ y < negaZero y
				ifTrue: [ y abs + step ]
				ifFalse: [ y abs + step negated ] ].
	^ x @ y