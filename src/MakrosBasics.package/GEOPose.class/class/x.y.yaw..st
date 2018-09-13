as yet unclassified
x: x y: y yaw: yaw
	^ self
		position: (GEO3DVector x: x y: y z: 0.0)
		rpy: (GEORollPitchYaw yaw: yaw)