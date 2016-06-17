*Makros
normalizedName
	^ ('/' split: self) inject: '' into: [ :norm :each | norm , (each ifEmpty: [ '' ] ifNotEmpty: [ '/' ]) , each ]