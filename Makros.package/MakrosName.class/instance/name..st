accessing
name: aName
	inUse
		ifFalse: [ name := aName ]
		ifTrue: [ self error: 'you cannot remap names already in use' ]