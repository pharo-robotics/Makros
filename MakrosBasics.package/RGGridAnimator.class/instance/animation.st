as yet unclassified
animation
	50 to: 50 do: [ :i | 
		0 to: 250 do: [ :j | self inloop: i and: j ].
		(150 negated to: 150) reverseDo: [ :j | self inloop: i and: j ].
		0 to: 170 do: [ :j | self inloop: i and: j ]. ]