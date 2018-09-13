as yet unclassified
setupIn: anApplication
	| velocityTopic planning scanTopic |
	velocityTopic := MakrosTopicPublisher
		forApp: anApplication
		onTopOfTopicNamed: '/cmd_vel_mux/input/navi'.
	scanTopic := MakrosTopicSubscriber forApp: anApplication onTopOfTopicNamed: '/scan'.
	planning := self forApp: anApplication.
	anApplication
		routeFrom: scanTopic
		port: #incoming
		to: planning
		port: #scan.
	anApplication
		routeFrom: planning
		port: #velocity
		to: velocityTopic
		port: #outgoing.
	^ planning