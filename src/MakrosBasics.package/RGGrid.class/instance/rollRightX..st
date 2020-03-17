as yet unclassified
rollRightX: gapX
	"
  [ X Y Z ]
  [ X Y Z ] 
  [ X Y Z ]
===>>
  [ Y Z U ]
  [ Y Z U ] 
  [ Y Z U ]
"

	| newPosition oldPosition xBoundaryRight xBoundaryLeft |
	self traceCr: ' right'.
	xBoundaryLeft := 1.
	xBoundaryRight := self sideSize - gapX abs - 1.
	0 to: self sideSize - 1 do: [ :each | 
		| y |
		y := each * self sideSize.
		(xBoundaryLeft to: xBoundaryRight)
			reverseDo: [ :x | 
				newPosition := y + x + gapX abs.
				oldPosition := y + x.
				grid at: newPosition put: (grid at: oldPosition).
				grid at: oldPosition put: self unknownValue ] ]