as yet unclassified
manageScan
	scan value
		ifNotNil:
			[ :lecture | 
			collision := (lecture ranges
				inject: 0
				into: [ :acc :each | 
					acc
						+
							(each < 0.3
								ifTrue: [ 1 ]
								ifFalse: [ 0 ]) ]) > 5 ]