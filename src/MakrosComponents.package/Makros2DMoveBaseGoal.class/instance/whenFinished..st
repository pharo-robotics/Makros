events-registering
whenFinished: aCallback
	self whenStatus: self class rejected do: aCallback.
	self whenStatus: self class aborted do: aCallback.
	self whenStatus: self class succeeded do: aCallback.
	self whenStatus: self class lost do: aCallback.