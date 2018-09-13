as yet unclassified
manageTf
	tf value
		ifNotNil: [ :val | 
			val = frames
				ifFalse: [ self frames: val ] ]