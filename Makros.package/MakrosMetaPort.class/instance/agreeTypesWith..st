typing
agreeTypesWith: anOtherMetaport
	^ ({type.
	(anOtherMetaport type)} includes: #*) not and: [ super agreeTypesWith: anOtherMetaport ]