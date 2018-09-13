as yet unclassified
cartesianRangesDo: aXYParameterBlock
	| cartesianRangesCache x y |
	" Cartesian ranges are note necessary needed. So, they are calculated at the first usage. "
	cartesianRanges
		ifNil:
			[ cartesianRangesCache := OrderedCollection new.	" We store the calculated ranges into a temporal variable. If there is any error during the calculation (because of the given block), we do not store any value in the final collection "
			self
				anglesAndRangesDo: [ :angle :range | 
					x := angle cos * range.
					y := angle sin * range.
					cartesianRangesCache
						add: x;
						add: y.
					aXYParameterBlock value: x value: y ].
			cartesianRanges := cartesianRangesCache ]
		ifNotNil:
			[ 1 to: cartesianRanges size by: 2 do: [ :idx | aXYParameterBlock value: (cartesianRanges at: idx) value: (cartesianRanges at: idx + 1) ] ]