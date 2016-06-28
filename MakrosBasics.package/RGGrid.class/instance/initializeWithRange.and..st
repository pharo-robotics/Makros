as yet unclassified
initializeWithRange: aRange and: aStep
	| size |
	range := aRange.
	step := aStep.
	size := self size.
	grid := ByteArray new: size x * size y.
	zero := range @ range