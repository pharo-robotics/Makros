baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Mako'
					with: [ spec repository: 'github://sbragagnolo/Mako/src' ];
				baseline: 'ROSDDS'
					with: [ spec repository: 'github://sbragagnolo/ROSDDS/src' ];
				project: 'SciSmalltalk'
					with: [ spec
						className: #ConfigurationOfSciSmalltalk;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/SergeStinckwich/SciSmalltalk/main/';
						loads: #('Math-Quaternion' 'Math-DHB-Numerical') ].
			spec
				package: #Makros
					with: [ spec requires: #('Mako' 'ROSDDS' 'SciSmalltalk') ];
				package: #MakrosTesting with: [ spec requires: #('Makros') ];
				package: #MakrosBasics with: [ spec requires: #('Makros') ];
				package: #MakrosComponents
					with: [ spec requires: #('Makros' 'MakrosBasics') ] ]