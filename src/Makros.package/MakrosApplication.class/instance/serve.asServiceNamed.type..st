convenience - services
serve: aValuable asServiceNamed: aServiceName type: aTypeName
	^ (domain findOrRegisterServiceByName: (namingTable serviceNameFor: aServiceName) type: aTypeName) serve: aValuable for: participant