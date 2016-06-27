as yet unclassified
sourceParentOfTarget
	resultQuaternion := targetToTopQuaternion inverse.
    	resultVector := resultQuaternion rotatePosition: ( targetToTopVector * -1).
    ^ GEOPose position: resultVector quaternion: resultQuaternion.