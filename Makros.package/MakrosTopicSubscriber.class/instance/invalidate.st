scrolling
invalidate
	subscription
		ifNotNil: [ self topic subscriber unregister: subscription.
			subscription := nil ]