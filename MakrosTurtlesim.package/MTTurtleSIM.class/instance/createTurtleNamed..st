as yet unclassified
createTurtleNamed: aName
	| turtle |
	self spawnTurtleIfNeededNamed: aName.
	turtle := MTTurtle forApp: self application named: aName.
	self application
		routeFrom: (self turtlePoseFor: turtle)
			port: #incoming
			to: turtle
			port: #pose;
		routeFrom: (self turtleColorFor: turtle)
			port: #incoming
			to: turtle
			port: #color;
		routeFrom: turtle
			port: #velocity
			to: (self turtleVelocityFor: turtle)
			port: #outgoing.
	self application configure.
	^ turtle