error-messages
cannotNegotiateDifferentTypes: aType
	self flag: #comment.	" This place looks nice for hooking up a type converter "
	self
		error:
			(' Cannot negotiate type for the flow connection. Types are different: {1}:{2}'
				format:
					{(self type).
					aType})