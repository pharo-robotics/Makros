converting
intoForm: image
	| color value |
	1 to: self sideSize * self sideSize do: [ :i | 
		| y x |
		y := i // self sideSize.
		x := i - (y * self sideSize).
		value := grid at: y * self sideSize + x.
		color := value = 50
			ifTrue: [ color := Color black.
				image colorAt: x @ y put: color.
				image colorAt: (x - 1) @ y - 1 put: color.
				image colorAt: (x + 1) @ y - 1 put: color.
				image colorAt: (x + 1) @ y + 1 put: color.
				image colorAt: (x - 1) @ y + 1 put: color.
				image colorAt: (x - 1) @ y - 1 put: color ]
			ifFalse: [ color := value = 10
					ifTrue: [ Color yellow ]
					ifFalse: [ value isUnknown
							ifTrue: [ Color black ]
							ifFalse: [ Color red ] ].
				image colorAt: x @ y put: color ] ].
	image colorAt: self zero negated put: Color blue.
	^ image