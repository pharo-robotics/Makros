as yet unclassified
animateY
	image := ColorForm extent: grid size depth: 64.
	morph := image asMorph.
	morph openInWorld.
	process := [ 50  to: 50 do: [ :i | 
		(500 negated to: 0) reverseDo: [ :j | 
			grid intoForm: image.
			morph form: image.
			grid at: (GEO3DVector x: j y: i z: 0) put: 10 ] ] ] forkAt: 30