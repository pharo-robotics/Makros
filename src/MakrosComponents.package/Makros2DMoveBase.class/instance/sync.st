accessing
sync
	[ self manageFeedback.
	self manageStatus.
	self manageIncomingGoal.
	self manageExpiredGoals ]
		on: Error
		do: [ :e | self halt ]