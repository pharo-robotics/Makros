as yet unclassified
manageCancel
	cancel value ifNotNil: [ :val | self cancelGoal: (self findGoalBy: val id and: val stamp) ]