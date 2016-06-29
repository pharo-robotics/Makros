as yet unclassified
rollLeftX: gapX
	0 to: grid size by: self sideSize do: [ :y | 
		(1 to: self sideSize + gapX) reverseDo: [ :x | grid at: y + x - gapX put: (grid at: x + y) ].
		self sideSize + gapX to: self sideSize do: [ :idx | grid at: idx put: SmallInteger unknown ] ]