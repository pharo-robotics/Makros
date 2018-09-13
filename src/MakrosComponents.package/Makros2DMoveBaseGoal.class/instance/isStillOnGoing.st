testing
isStillOnGoing
	^ {self class active.
	self class pending.
	self class preempting.
	self class recalling} includes: status