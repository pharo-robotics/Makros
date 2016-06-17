accessing
hasConnections
	^ publisher
		ifNotNil: [ publisher connections isNotEmpty ]
		ifNil: [ false ]