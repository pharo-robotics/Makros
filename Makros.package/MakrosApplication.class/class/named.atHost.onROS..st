as yet unclassified
named: aName atHost: anIPString onROS: anURL
	^ self
		named: aName
		atHost: anIPString
		onROS: anURL
		resolvingNamesWith: MakrosNamingTable new