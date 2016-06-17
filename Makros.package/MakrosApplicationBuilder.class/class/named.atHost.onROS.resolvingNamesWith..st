as yet unclassified
named: aName atHost: anIPString onROS: anURL resolvingNamesWith: aNamer
	^ self new
		ipHost: anIPString;
		nameParticipant: aName;
		rosUrl: anURL;
		namingTable: aNamer;
		yourself