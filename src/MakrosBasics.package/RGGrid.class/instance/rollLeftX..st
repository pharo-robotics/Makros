as yet unclassified
rollLeftX: gapX
	"
  [ X Y Z ]
  [ X Y Z ] 
  [ X Y Z ]
<<===
  [ U X Y ]
  [ U X Y ] 
  [ U X Y ]
"

	| newPosition oldPosition xBoundaryRight xBoundaryLeft |
	self traceCr: ' left'.
	xBoundaryLeft := gapX abs + 1.
	xBoundaryRight := self sideSize.
	0 to: self sideSize - 1 do: [ :each | 
		| y |
		y := each * self sideSize.
		xBoundaryLeft to: xBoundaryRight do: [ :x | 
			newPosition := y + x + gapX.
			oldPosition := y + x.
			grid at: newPosition put: (grid at: oldPosition).
			grid at: oldPosition put: self unknownValue ] ]