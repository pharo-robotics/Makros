as yet unclassified
turtleColorFor: aTurtle
	^ MakrosTopicSubscriber forApp: self application onTopOfTopicNamed: ('/{1}/color_sensor' format: {(aTurtle name)})