construction
pose: aPose frame: aFrameName
	^ self
		id: UUID new asString
		stamp: #now
		pose: aPose
		frame: aFrameName