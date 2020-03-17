as yet unclassified
rollUpY: gapY
	"
  [ X X X ]
  [ Y Y Y ] 
  [ Z Z Z ]
^
  [ U U U ]
  [ X X X ]
  [ Y Y Y ] 

"

	| realGap |
	self traceCr: 'Tolling up'.
	realGap := gapY * self sideSize.
	(gapY to: self sideSize - 1)
		reverseDo: [ :each | 
			| y |
			y := each * self sideSize.
			1 to: self sideSize do: [ :x | 
				| old new |
				new := x + y.
				old := x + y - realGap abs.
				grid at: new put: (grid at: old).
				grid at: old put: SmallInteger unknown ] ]