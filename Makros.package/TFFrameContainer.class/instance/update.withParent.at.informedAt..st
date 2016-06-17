as yet unclassified
update: aFrameID withParent: aParentFrameID at: aPose informedAt: aTimeStamp
	| frame |
	frame := self at: aFrameID.
	frame parent: (self at: aParentFrameID).
	frame pose: aPose.
	frame stamp: aTimeStamp.
	