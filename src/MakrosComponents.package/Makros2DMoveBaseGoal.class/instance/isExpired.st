testing
isExpired
	^ timeout notNil and: [ timeout < DateAndTime now asUnixTime ].