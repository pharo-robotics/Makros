as yet unclassified
accumulateToSource: aFrame
    sourceToTopVector := (aFrame pose rotation rotatePosition: sourceToTopVector) + aFrame pose translation.
    sourceToTopQuaternion := aFrame pose rotation * sourceToTopQuaternion.