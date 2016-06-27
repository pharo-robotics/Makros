as yet unclassified
printSpeed
	| destination |
	"	self halt."
	self currentGoal
		ifNotNil:
			[ :aGoal | 
			destination := collision
				ifTrue: [ KINVelocity zero ]
				ifFalse: [ frames
						transform: aGoal pose
						from: aGoal frame
						to: 'base_link' ].
			velocity
				value:
					(self conversions
						fromKINVelocityToROSTwist: (self calculateVelocityFor: destination)) ]