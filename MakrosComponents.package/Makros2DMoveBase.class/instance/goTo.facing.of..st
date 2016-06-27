deprecated
goTo: aPoint facing: anAngle of: aFrameName
	^ self
		goToGoal: ((GEOPose x: aPoint x y: aPoint y yaw: anAngle) asGoalAtFrame: aFrameName)