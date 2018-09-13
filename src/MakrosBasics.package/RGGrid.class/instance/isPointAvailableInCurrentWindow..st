testing
isPointAvailableInCurrentWindow: aPoint
	^ (aPoint x between: 0 and: self sideSize - 1) and: [ aPoint y between: 0 and: self sideSize - 1 ]