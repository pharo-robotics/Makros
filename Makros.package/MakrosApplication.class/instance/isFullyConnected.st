testing
isFullyConnected
	^ (self components select: #isMakrosComponent) allSatisfy: #hasConnections