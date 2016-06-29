as yet unclassified
rollUpY: gapY
	gapY to: grid size - 1 by: self sideSize do: [ :y | 1 to: self sideSize do: [ :x | grid at: x + y - gapY put: (grid at: x + y) ] ].
	0 to: gapY do: [ :idx | grid at: idx put: SmallInteger unknown ]