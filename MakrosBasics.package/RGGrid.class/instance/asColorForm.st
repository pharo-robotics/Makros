as yet unclassified
asColorForm
	| image |
	image := ColorForm extent: (self sideSize * 2) @ self sideSize * 2 depth: 8.
	0 to: self sideSize + 1 do: [ :y | 
		1 to: self sideSize do: [ :x | 
			| value |
			value := grid at: y * self sideSize + x.
			0 to: 1 do: [ :i | 
				0 to: 1 do: [ :j | 
					image
						colorAt: (x + i) @ (y + j)
						put:
							(Color
								colorFrom:
									{value.
									value.
									value}) ] ] ] ].
	^ image