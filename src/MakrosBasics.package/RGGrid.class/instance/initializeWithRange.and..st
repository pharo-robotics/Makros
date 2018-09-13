initialization
initializeWithRange: aRange and: aStep
	| size |
	range := aRange.
	step := aStep.
	size := self size.
	grid := ByteArray new: size x * size y + 1.
	zero := (range  @ range) negated.
	rolled := 0