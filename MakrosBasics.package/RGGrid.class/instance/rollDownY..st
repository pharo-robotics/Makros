as yet unclassified
rollDownY: gapY
	(0 to: grid size + gapY by: self sideSize) reverseDo: [ :y | 1 to: self sideSize do: [ :x | grid at: x + y - gapY put: (grid at: x + y) ] ]