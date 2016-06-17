accessing
destroy
	super destroy. " Removing components from application. "
	self stop. "Stopping related service process "
	domain ifNotNil: [ domain destroy ]. " Stopping domain"
	self invalidate. "Cleanup object"
	builder := nil. "Cleanup rebuilding information"
	