typing
checkTypeOfValue: aType
	({self type.
	BlockClosure.
	self type marshaller relatedClass} includes: aType class)
		ifFalse:
			[ MakoError
				signal:
					('The class {1} does not applies to the type {1}'
						format:
							{aType name.
							self metaport type name}) ]