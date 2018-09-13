as yet unclassified
sync
	rendering
		ifFalse: [ costmap value
				ifNotNil: [ :value | 
					self ensureImageAndMorphFor: value.
					self render: value ] ]