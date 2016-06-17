as yet unclassified
turtlePoseFor: aTurtle
	^ MakrosTopicSubscriber forApp: self application onTopOfTopicNamed: ('/{1}/pose' format: {(aTurtle name)})