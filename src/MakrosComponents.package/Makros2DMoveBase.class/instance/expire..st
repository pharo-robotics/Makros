accessing
expire: aGoal
	self cancel: aGoal.
	aGoal status: Makros2DMoveBaseGoal expired.
	self traceCr:'Expiring goal ', aGoal id asString.