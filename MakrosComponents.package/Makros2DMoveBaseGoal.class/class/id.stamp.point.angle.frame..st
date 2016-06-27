deprecated
id: anId stamp: aStamp point: aPoint angle: anAngle frame: aFrameName
	^ self
		id: anId
		stamp: aStamp
		pose: (GEOPose x: aPoint x y: aPoint y yaw: anAngle)
		frame: aFrameName