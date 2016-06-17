scrolling
invalidate
	isConfigured := false.
	publisher
		ifNotNil: [ self topic publisher stopPublishing: publisher.
			publisher := nil ]