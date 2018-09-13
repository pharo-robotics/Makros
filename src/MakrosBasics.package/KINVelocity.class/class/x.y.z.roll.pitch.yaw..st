as yet unclassified
x: x y: y z: z roll: roll pitch: pitch yaw: yaw
	^ self
		linear: (GEO3DVector x: x y: y z: z)
		angular: (GEORollPitchYaw roll: roll pitch: pitch yaw: yaw)