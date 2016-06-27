as yet unclassified
anglesAndRangesDo: aTwoParametersBlock
	^ 1 to: scans size by: 2 do: [ :idx | aTwoParametersBlock value: (scans at: idx) value: (scans at: idx + 1) ]