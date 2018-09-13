as yet unclassified
spawnTurtleIfNeededNamed: aName
	[ spawn
		call: [ :rq | rq name: aName.
			rq
				x: 10;
				y: 5 ] ]
		on: DDSServiceCallFailed
		do: [  ]