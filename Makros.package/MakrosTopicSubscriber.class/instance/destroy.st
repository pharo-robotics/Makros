accessing
destroy
	super destroy.
	self invalidate.
	application := nil