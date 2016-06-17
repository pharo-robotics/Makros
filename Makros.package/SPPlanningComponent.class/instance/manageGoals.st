as yet unclassified
manageGoals
	goal value
		ifNotNil:
			[ :newGoal | 
			self
				addGoal: (self conversions fromMoveBaseActionGoalTo2DMoveBaseGoal: newGoal) ]