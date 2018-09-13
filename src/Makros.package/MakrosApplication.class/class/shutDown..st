as yet unclassified
shutDown: isQuittingImage
	isQuittingImage
		ifTrue: [ self allSubInstancesDo: #invalidate ].