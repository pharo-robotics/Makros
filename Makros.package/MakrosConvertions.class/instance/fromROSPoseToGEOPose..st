ros to local
fromROSPoseToGEOPose: aROSTransform
	^ GEOPose
		position: (self fromROSPosition3DToGEO3DPosition: aROSTransform position)
		quaternion: (self fromROSQuaternionToQuaternion: aROSTransform orientation)