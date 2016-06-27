events-registering
whenRecoverableState: aCallback
	^ self whenStatus: self class aborted do: aCallback