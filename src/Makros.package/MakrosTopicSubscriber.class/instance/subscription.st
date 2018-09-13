accessing
subscription
	^ subscription ifNil: [ subscription := application subscriptionFor: self topic onRead: [ :message | self depositValueInPort: message ] ]