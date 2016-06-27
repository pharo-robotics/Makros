events-registering
whenStatus: anStatusID do: aCallback
	(triggers at: anStatusID ifAbsentPut:[ Set new ]) add: aCallback