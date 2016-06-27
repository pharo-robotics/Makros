accessing
state
	^ self class stateName: (status ifNil: [0]).