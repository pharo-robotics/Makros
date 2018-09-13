accessing
destroy
	application unsubscribeFromAnnouncement: self.
	super destroy.
	self invalidate.
	application := nil