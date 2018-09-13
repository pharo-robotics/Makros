accessing
type
	^ self basicType
		ifNil: [ 
			self type: (self metaport rostypeIn: self domain).
			self basicType ]