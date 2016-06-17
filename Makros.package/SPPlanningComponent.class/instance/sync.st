accessing
sync
	[ self manageGoals.
	self manageTf.
	self manageCancel.
	self manageScan.
	self printSpeed ]
		on: Error
		do: [ :err | self halt ]