as yet unclassified
setupIn: anApplication
	| tfcomponent tf  |
	tfcomponent := TFComponent forApp: anApplication.
	tf := MakrosTopicSubscriber forApp: anApplication onTopOfTopicNamed: '/tf'.
	anApplication
		routeFrom: tf
		port: #incoming
		to: tfcomponent
		port: #tfIn.
	^ tfcomponent