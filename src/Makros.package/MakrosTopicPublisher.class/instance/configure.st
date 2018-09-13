convenience
configure
	isConfigured
		ifFalse: [ 
			self publish: [ :empty |  ].
			isConfigured := true ]