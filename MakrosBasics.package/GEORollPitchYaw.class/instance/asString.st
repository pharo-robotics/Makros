converting
asString
	^ 'rpy:({1};{2};{3})'
		format:
			{self roll.
			self pitch.
			self yaw}