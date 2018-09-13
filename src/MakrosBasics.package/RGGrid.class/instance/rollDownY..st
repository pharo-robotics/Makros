as yet unclassified
rollDownY: gapY
	"
  [ X X X ]
  [ Y Y Y ] 
  [ Z Z Z ]
^
  [ Y Y Y ] 
  [ Z Z Z ]
  [ U U U ]
"

	| realGap |
	self logCr: 'Tolling up'.
	realGap := gapY abs * self sideSize.
	0 to: self sideSize - 1 - gapY abs do: [ :each | 
		| y |
		y := each * self sideSize.
		1 to: self sideSize do: [ :x | 
			| old new |
			new := x + y.
			old := x + (y + realGap).
			grid at: new put: (grid at: old).
			grid at: old put: SmallInteger unknown ] ]
	"
	| realGap yBoundary |
	
	self logCr: 'Tolling down'.
	realGap := gapY * self sideSize.
	yBoundary := self sideSize - 1 - gapY abs.
	self logCr: yBoundary asString, ' To: ', (self sideSize -1 ) asString.
	yBoundary -1  to: self sideSize - 2 do: [ :each | 
		| y |
		y := each * self sideSize.
		1 to: self sideSize -1 do: [ :x | 
			| old new |
			old := x + y.
			new := x + y - realGap.
			grid at: new put: (grid at: old).
			grid at: old put: SmallInteger unknown ] ]."
	"((yBoundary + 1) max: 0) to: self sideSize - 1 do: [ :each | 
		| y |
		y := each * self sideSize.
		1 to: self sideSize do: [ :x | grid at: x + y put: self unknownValue ] ]"