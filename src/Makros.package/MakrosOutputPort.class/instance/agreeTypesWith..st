typing
agreeTypesWith: anOtherPort
	self domain = anOtherPort domain
		ifFalse: [ ^ self error: 'Inter-domain connections are not allowed ' ].	
			" Metaport checks type by name. Same name, same domain => same type. Md5 and versioning is checked by the topic mechanisms  "
	(self metaport agreeTypesWith: anOtherPort metaport)
		ifFalse: [ 
			" If both types are setted and both are type or both are place holder, we cannot do much "
			(self type isTypePlaceHolder and: [ anOtherPort type isTypePlaceHolder ])
				ifTrue: [  self cannotNegotiateTypeHolderWithTypeHolder: anOtherPort type ].
			(self type isTypePlaceHolder not and: [ anOtherPort type isTypePlaceHolder not ])
				ifTrue: [   self cannotNegotiateDifferentTypes: anOtherPort type ].
			
			" If just one of both ports has a type holder instead of a type, i transmit the real type."
			(self type isTypePlaceHolder and: [ anOtherPort type isTypePlaceHolder not ])
				ifTrue: [ self type: anOtherPort type ].
			(self type isTypePlaceHolder not and: [ anOtherPort type isTypePlaceHolder ])
				ifTrue: [ anOtherPort type: self type ].
			
		 ]