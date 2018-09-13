as yet unclassified
buildROSObjectsOn: aMakrosApplication
	| domain participant |
	domain := DDSExternallyDefinedDomain onROS: rosUrl.
	participant := DDSDomainParticipant
		domain: domain
		name: nameParticipant
		ip: ipHost.
	namingTable reset.
	aMakrosApplication
		domain: domain;
		participant: participant;
		namingTable: namingTable