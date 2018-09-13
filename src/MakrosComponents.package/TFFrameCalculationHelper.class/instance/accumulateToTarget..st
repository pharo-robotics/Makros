as yet unclassified
accumulateToTarget: aFrame
    targetToTopVector := (aFrame pose rotation rotatePosition: targetToTopVector) + aFrame pose translation.
    targetToTopQuaternion := aFrame pose rotation * targetToTopQuaternion.