as yet unclassified
findGoalBy: anId and: aStamp
	^ goals detect: [ :v | v id = anId ]