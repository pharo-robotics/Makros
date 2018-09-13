initial configuration
testInitializedInUnknown
	grid allPointsSatisfy: #isUnknown.
	self deny: grid rolled > 0.