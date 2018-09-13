query
findGoalId: aGoalUUID stamped: aGoalStamp
	^ self
		findGoalId: aGoalUUID
		stamped: aGoalStamp
		ifNone: [ 
			self
				error:
					('The goal {1}:{2} does not exists'
						format:
							{aGoalUUID.
							(aGoalStamp asString)}) ]