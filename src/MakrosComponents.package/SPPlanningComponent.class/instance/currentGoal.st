as yet unclassified
currentGoal
	^ goals size > 0
		ifTrue: [ goals first ]
		ifFalse: [ nil ]