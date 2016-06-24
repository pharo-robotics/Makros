as yet unclassified
sync
	| absolutePoints |
	tf value
		ifNotNil: [ :tfGuru | 
			scan " If we have TF information "
				ifNotNil: [ :laser | 
					absolutePoints := OrderedCollection new.
					laser cartesianRangesDo: [ :x :y | absolutePoints add: (tfGuru transform: (GEOPose x: x y: y yaw: 0) from: '/base_link' to: '/map') position ] ].	" And we have scan information "
			"We push pointcloud info. "
			points
				value:
					(SNSPointCloud
						new;
						points: absolutePoints;
						yourself) ]	