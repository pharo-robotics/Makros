actions
linear: aLinearValue angular: anAngularValue
	^ self
		velocityBlock: [ :twist | 
			twist linear x: aLinearValue.
			twist angular z: anAngularValue ]