as yet unclassified
rollRightX: gapX
	0 to: grid size - 1 by: self sideSize do: [ :y | 
		gapX to: self sideSize do: [ :x | grid at: x + 1 - gapX + y put: (grid at: x + y) ].
		1 to: gapX do: [ :idx | grid at: idx put: SmallInteger unknown ] ]