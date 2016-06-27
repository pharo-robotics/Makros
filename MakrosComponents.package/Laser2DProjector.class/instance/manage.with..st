component business
manage: aSNSLaser with: aTF
	| absolutePoints |
	absolutePoints := OrderedCollection new.
	aSNSLaser
		cartesianRangesDo: [ :x :y | absolutePoints add: (aTF transform: (GEOPose x: x y: y yaw: 0) from: self baselink to: self map) position ].
	points
		value:
			(SNSPointCloud new
				points: absolutePoints;
				yourself)