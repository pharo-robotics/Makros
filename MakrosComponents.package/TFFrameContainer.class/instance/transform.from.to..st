as yet unclassified
transform: aPose from: aFrameID to: anOtherFrameID
	^ (self at: aFrameID) convert: aPose to: (self at: anOtherFrameID)