public API
goToGoal: aGoal
	goals add: aGoal.
	goal value: aGoal asGoalRosMessage.
	aGoal whenFinished: [ :finished | goals remove: finished ].
	^ aGoal