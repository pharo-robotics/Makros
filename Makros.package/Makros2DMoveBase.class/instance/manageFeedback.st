syncing
manageFeedback
	feedback value
		ifNotNil: [ :value | 
			self
				findGoalId: value status goal_id id
				stamped: value status goal_id stamp
				ifFound: [ :g | 
					g
						status: value status status;
						text: value status text ]
				ifNone: [ self createAndTrackGoalFrom: value status. ].
				
				self informPose: (self conversions fromROSPoseToGEOPose: value feedback base_position pose). 
			 ]