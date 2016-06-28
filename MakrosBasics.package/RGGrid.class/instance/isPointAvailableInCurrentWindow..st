as yet unclassified
isPointAvailableInCurrentWindow: aPoint
	^ (aPoint x between: 1 and: self sideSize)
		and: [ aPoint y between: 1 and: self sideSize ]