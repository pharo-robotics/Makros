component business
manage: aSNSLaser with: aTF
	| absolutePoints |
	absolutePoints := OrderedCollection new.
	aSNSLaser
		cartesianRangesDo: [ :x :y | 
			| position |
			position := (aTF transform: (GEOPose x: x y: y yaw: 0) from: self baselink to: self map) position.
			position x: position x * 10.
			position y: position y * 10.
			absolutePoints add: position ].
	points
		value:
			(SNSPointCloud new
				points: absolutePoints;
				yourself)