initial configuration
testGridSizeIsDoubleRangePer100
	self assert: grid size equals: self dimension @ self dimension.
	self deny: grid rolled > 0.