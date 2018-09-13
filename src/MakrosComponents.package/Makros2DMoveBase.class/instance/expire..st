accessing
expire: aGoal
	self cancel: aGoal.
	aGoal status: Makros2DMoveBaseGoal expired.
	self logCr:'Expiring goal ', aGoal id asString.