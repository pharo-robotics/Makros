accessing
createAndTrackGoalFrom: aGoalStatus
	| tracking |
	tracking := Makros2DMoveBaseGoal
		id: aGoalStatus goal_id id
		stamp: aGoalStatus goal_id stamp
		pose: nil
		frame: '/map'.
	goals add: tracking.
	tracking whenFinished: [ :succeeded | goals remove: succeeded ]