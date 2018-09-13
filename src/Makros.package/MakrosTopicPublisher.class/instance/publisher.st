accessing
publisher
	^ publisher ifNil: [  publisher := application publisherFor: self topic ].