accessing
roll: anIndexToServe
	| gapX gapY gap |
	" 0, 1 "
	rolled := rolled + 1.
	gap := self zeroOrGap: anIndexToServe.
	gapX := gap x.
	gapY := gap y.

	zero y - gapY < zero y
		ifTrue: [ self rollUpY: gapY ].
	zero y - gapY > zero y
		ifTrue: [ self rollDownY: gapY ].
	zero x - gapX > zero x
		ifTrue: [ self rollLeftX: gapX ].
	zero x - gapX < zero x
		ifTrue: [ self rollRightX: gapX ].
	"	gapX > 0
		ifTrue: [ self rollRightX: gapX ].
	gapX < 0
		ifTrue: [ self rollLeftX: gapX ]."
	zero := zero - gap