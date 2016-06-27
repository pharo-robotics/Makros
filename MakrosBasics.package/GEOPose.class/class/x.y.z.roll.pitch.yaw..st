as yet unclassified
x: x y: y z: z roll: roll pitch: pitch yaw: yaw
	^ self
		position: (GEO3DVector x: x y: y z: z)
		rpy: (GEORollPitchYaw roll: roll pitch: pitch yaw: yaw)