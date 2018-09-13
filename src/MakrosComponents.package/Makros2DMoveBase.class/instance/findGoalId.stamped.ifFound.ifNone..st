query
findGoalId: aGoalUUID stamped: aGoalStamp ifFound: aFound ifNone: aBlock
self flag: #shouldUncommentTheGoal. 
" Actually the goal stores as stamp #now, that is a magic value "
	^ goals detect: [ :g | g id = aGoalUUID	" and: [ g stamp = aGoalStamp ]" ] ifFound: aFound ifNone: aBlock