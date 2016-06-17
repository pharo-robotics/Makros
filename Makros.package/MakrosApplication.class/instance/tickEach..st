threading
tickEach: aRate
	[ self tick.
	aRate cycleDelay wait ]
		on: Error
		do: [ :err | self halt ]