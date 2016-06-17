query
findGoalId: aGoalUUID stamped: aGoalStamp ifFound: aFoundBlock
	^ self
		findGoalId: aGoalUUID
		stamped: aGoalStamp
		ifFound: aFoundBlock
		ifNone: [ 
			self
				error:
					('The goal {1}:{2} does not exists'
						format:
							{aGoalUUID.
							(aGoalStamp asString)}) ]