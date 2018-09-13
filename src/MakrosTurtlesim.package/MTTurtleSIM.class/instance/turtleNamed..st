as yet unclassified
turtleNamed: aName
	^ turtles detect: [ :t | t name = aName ] ifNone: [ turtles add: (self createTurtleNamed: aName) ]