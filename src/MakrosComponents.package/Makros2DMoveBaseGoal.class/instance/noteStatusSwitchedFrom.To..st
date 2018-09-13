event-handling
noteStatusSwitchedFrom: anOldStatusID To: aStatusID
	triggers
		at: aStatusID
		ifPresent: [ :callbacks | callbacks do: [ :callback | callback cull: self cull: anOldStatusID cull: aStatusID ] ]