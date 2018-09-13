as yet unclassified
animate
	image := ColorForm extent: grid size depth: 64.
	morph := image asMorph.
	morph openInWorld.
	process := [ self animation ] forkAt: 30