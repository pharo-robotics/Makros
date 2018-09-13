baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/sbragagnolo/Makros/main/'.
			spec baseline: 'Makros' with: [ spec repository: 'github://sbragagnolo/Makros' ].
			spec package: 'MakrosTurtlesim' ]