private
fetchName: aKeyName from: aNameDictionary
	aNameDictionary
		at: aKeyName normalizedName
		ifAbsent: [ self registerRemapAt: aNameDictionary remapping: aKeyName to: aKeyName ].
	^ (aNameDictionary at: aKeyName normalizedName) name