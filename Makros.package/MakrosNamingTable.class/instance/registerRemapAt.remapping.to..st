private
registerRemapAt: aDictionary remapping: aTopicKeyName to: aNewTopicName
	aDictionary
		at: aTopicKeyName normalizedName
		ifPresent: [ :reg | reg name: aNewTopicName normalizedName ]
		ifAbsent: [ aDictionary
				at: aTopicKeyName normalizedName
				put:
					(MakrosName new
						name: aNewTopicName normalizedName;
						yourself) ]