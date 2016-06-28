as yet unclassified
roll: aGapPoint
	| newZero gap |
	" 0, 1 "
	gap := (aGapPoint abs + step) * aGapPoint sign.
	0 to: grid size - 1 by: self sideSize do: [ :x | gap y to: self sideSize do: [ :y | grid at: x + y - (gap y - 1) put: (grid at: x + y) ] ].
	zero := zero + gap