as yet unclassified
sync
	rendering
		ifFalse: [ costmap value
				ifNotNil: [ :value | 
					self ensureImageAndMorphFor: costmap.
					self render: costmap ] ]