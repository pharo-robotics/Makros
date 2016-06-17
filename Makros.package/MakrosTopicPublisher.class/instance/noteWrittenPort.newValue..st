event-handling
noteWrittenPort: aPort newValue: aNewValue
	outgoing = aPort
		ifTrue: [ self publish: aNewValue ]