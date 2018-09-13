as yet unclassified
named: aName atHost: anIPString onROS: anURL resolvingNamesWith: aNamer
	^ self new
		builder: (MakrosApplicationBuilder named: aName atHost: anIPString onROS: anURL resolvingNamesWith: aNamer);
		configure;
		yourself