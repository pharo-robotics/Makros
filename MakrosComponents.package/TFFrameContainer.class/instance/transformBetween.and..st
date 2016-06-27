as yet unclassified
transformBetween: aFrameID and: anOtherFrameID
	^ (self at: aFrameID) poseRelativeTo: (self at: anOtherFrameID)