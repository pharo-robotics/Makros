as yet unclassified
force: aVal between: min and: max
	aVal < min
		ifTrue: [ ^ min ].
	aVal > max
		ifTrue: [ ^ max ].
	^ aVal