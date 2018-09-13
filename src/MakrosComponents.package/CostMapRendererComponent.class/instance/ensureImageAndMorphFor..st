as yet unclassified
ensureImageAndMorphFor: aCostmap
	(image isNil or: [ image extent ~= aCostmap size ])
		ifTrue: [ morph ifNotNil: [ morph delete ].
			image := ColorForm extent: aCostmap size depth: 64.
			morph := image asMorph.
			morph openInWorld ]