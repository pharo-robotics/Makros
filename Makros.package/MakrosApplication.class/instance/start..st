accessing
start: aRate
	process
		ifNil:
			[ process := (self -> #tickEach:) tkt
				loopingService;
				inALocalProcess;
				priority: 60;
				withArgument: aRate;
				start ]