as yet unclassified
inloop: i and: j
	grid intoForm: image.
	morph form: image.
	grid at: (GEO3DVector x: j negated y: j  z: 0) put: 10