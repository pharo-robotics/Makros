accessing
angle: anAngleInFloat
	self pose orientation: (GEORollPitchYaw yaw: anAngleInFloat) asQuaternion
