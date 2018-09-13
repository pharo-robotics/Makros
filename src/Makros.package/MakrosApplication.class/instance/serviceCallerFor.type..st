convenience - services
serviceCallerFor: aServiceName type: aTypeName
	^ (domain findOrRegisterServiceByName: (namingTable serviceNameFor: aServiceName) type: aTypeName)
		callerFor: participant.