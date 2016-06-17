as yet unclassified
manageTfInfo
	tfIn value
		ifNotNil:
			[ :val | 
			val transforms
				do:
					[ :t | 
					frames
						update: t child_frame_id
						withParent: t header frame_id
						at: (self conversions fromROSTransformToGEOTransform: t transform)
						informedAt: t header stamp ] ].
	container value: frames