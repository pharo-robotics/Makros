accessing
fullPath
	| quat vec |
	quat := targetToTopQuaternion inverse.
	vec := quat rotatePosition: targetToTopVector * -1.
	resultVector := (quat rotatePosition: sourceToTopVector) + vec.
	resultQuaternion := quat * sourceToTopQuaternion.
	^ GEOPose position: resultVector quaternion: resultQuaternion