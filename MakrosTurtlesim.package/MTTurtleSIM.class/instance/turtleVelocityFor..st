as yet unclassified
turtleVelocityFor: aTurtle
	^ MakrosTopicPublisher forApp: self application onTopOfTopicNamed: ('/{1}/cmd_vel' format: {(aTurtle name)})