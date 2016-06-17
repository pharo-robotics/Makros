events-registering
whenSucceeded: aCallback
	^ self whenStatus: self class succeeded do: aCallback