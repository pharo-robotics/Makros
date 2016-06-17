as yet unclassified
setupIn: application
	| benchmark topic |
	benchmark := self forApp: application.
	topic := MakrosTopicPublisher forApp: application onTopOfTopicNamed: '/benchmark'.
	application
		routeFrom: benchmark
		port: #outgoing
		to: topic
		port: #outgoing.