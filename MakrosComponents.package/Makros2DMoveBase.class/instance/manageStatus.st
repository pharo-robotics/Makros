syncing
manageStatus
	status value
		ifNotNil: [ :value | 
			value status_list
				do: [ :gst | 
					self
						findGoalId: gst goal_id id
						stamped: gst goal_id stamp
						ifFound: [ :g | 
							g
								status: gst status;
								text: gst text ]
						ifNone: [ self createAndTrackGoalFrom: gst ] ] ]
		ifNil: [  ]