ros to local
fromROSTransformToGEOTransform: aROSTransform
	^ GEOTransform
		translation: (self fromROSVector3DToGEO3DVector: aROSTransform translation)
		rotation: (self fromROSQuaternionToQuaternion: aROSTransform rotation)