printing
printOn: aStream
	^ (' {1} ({2}-{3}) '
		format:
			{pose.
			self state.
			text}) printOn: aStream