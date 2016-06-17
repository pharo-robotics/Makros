ros to local
fromROSQuaternionToQuaternion: aROSQuaternion
	^ Quaternion
		qr: aROSQuaternion w
		qi: aROSQuaternion x
		qj: aROSQuaternion y
		qk: aROSQuaternion z