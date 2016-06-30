as yet unclassified
roll: anIndexToServe
	| gapX gapY gap |
	" 0, 1 "
	rolled := rolled + 1. 
	gap := self zeroOrGap: anIndexToServe.

	gapX := gap x.
	gapY := gap y.
	" 
	gapY > 0 	ifTrue: [ self rollUpY: gapY ].
	gapY < 0 	ifTrue: [ self rollDownY: gapY ].
	gapX > 0 	ifTrue: [ self rollRightX: gapX ].
	gapX < 0 	ifTrue: [ self rollLeftX: gapX ]."
	zero := zero - gap