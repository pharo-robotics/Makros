instance creation
new: aSize
	self assert: aSize = 3.
	^ super new: aSize
	