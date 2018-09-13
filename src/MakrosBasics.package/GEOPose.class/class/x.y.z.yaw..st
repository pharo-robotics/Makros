as yet unclassified
x: x y: y z: z yaw: yaw
	^ self
		position: (GEO3DVector x: x y: y z: z)
		rpy: (GEORollPitchYaw yaw: yaw)