accessing
hasConnections
	^ subscription
		ifNotNil: [ subscription connections isNotEmpty ]
		ifNil: [ false ]