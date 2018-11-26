accessing
start: aRate
	process
		ifNil: [ process := TKTParameterizableService new.
			process
				onSetUpDo: [ Processor activeProcess priority: 60.
					self logCr: 'DDS System monitor has started' ].
			process onTearDownDo: (MessageSend receiver: self selector: #stop).
			process step: (MessageSend receiver: self selector: #tickEach: argument: aRate).
			process name: 'MakrosApplication clock ', UUID new asString.
			process start ]