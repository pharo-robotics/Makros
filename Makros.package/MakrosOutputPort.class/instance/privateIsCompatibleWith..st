accessing
privateIsCompatibleWith: anOtherPort
	^ anOtherPort isMakrosPort and: [ super privateIsCompatibleWith: anOtherPort ]