as yet unclassified
isPointAvailableInCurrentWindow: aPoint
	| negaZero |
	negaZero := zero negated.
	^ (aPoint x between: negaZero x and: negaZero x + self sideSize) and: [ aPoint y between: negaZero y and: negaZero y + self sideSize ]