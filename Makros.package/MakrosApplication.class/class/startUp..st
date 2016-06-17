as yet unclassified
startUp: isResuming
	isResuming
		ifTrue: [ self allSubInstancesDo: #configure ]