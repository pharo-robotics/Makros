error-messages
cannotNegotiateTypeHolderWithTypeHolder: aType
	self
		error:
			(' Cannot negotiate type for the flow connection. Both types are type-holders: {1}{2}'
				format:
					{(self type).
					aType})