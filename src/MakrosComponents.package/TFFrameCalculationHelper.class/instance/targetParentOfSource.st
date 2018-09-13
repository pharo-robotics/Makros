as yet unclassified
targetParentOfSource
    resultQuaternion := sourceToTopQuaternion.
    resultVector := sourceToTopVector.
    ^ GEOPose position: resultVector quaternion: resultQuaternion.