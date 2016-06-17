as yet unclassified
named: aName atHost: anIPString onROS: anURL
	^ self new
		ipHost: anIPString;
		nameParticipant: aName;
		rosUrl: anURL;
		yourself