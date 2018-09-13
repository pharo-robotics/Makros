events-registering
whenExpired: aCallback
	self whenStatus: self class expired do: aCallback.
