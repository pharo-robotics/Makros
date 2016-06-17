events-registering
whenNotSuccessfullyFinished: aCallback
	self whenStatus: self class rejected do: aCallback.
	self whenStatus: self class aborted do: aCallback.
	self whenStatus: self class lost do: aCallback.