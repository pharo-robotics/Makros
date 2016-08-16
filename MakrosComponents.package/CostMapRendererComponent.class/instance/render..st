as yet unclassified
render: aCostmap
	rendering := true.
	renderer := [ [ aCostmap intoForm: image ]
		ensure: [ rendering := false ] ] run