printing
printOn: aStream
	^ ('{1} ({2})'
		format:
			{name.
			pose asString}) printOn: aStream