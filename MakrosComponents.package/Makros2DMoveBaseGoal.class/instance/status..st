accessing
status: aStatusID
	| old |
	old := status.
	status := aStatusID.
	self noteStatusSwitchedFrom: old To: status