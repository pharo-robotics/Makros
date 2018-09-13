testing
isExpiredAt: aCurrentUnixTime
	^ timeout notNil and: [ timeout < aCurrentUnixTime ]