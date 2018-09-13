query
findGoalId: aGoalUUID stamped: aGoalStamp ifNone: aBlock
	^ goals
		detect: [ :g | g id = aGoalUUID and: [ g stamp = aGoalStamp ] ]
		ifNone: aBlock