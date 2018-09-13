as yet unclassified
forApp: anApplication onTopOfTopicNamed: aTopicName
	^ (super forApp: anApplication)
		topicName: aTopicName;
		yourself