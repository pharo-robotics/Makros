accessing
at: aFrameID
	^ self frames at: aFrameID ifAbsentPut: [ TFFrame name: aFrameID ]