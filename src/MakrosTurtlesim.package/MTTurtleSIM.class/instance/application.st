as yet unclassified
application
	^ application
		ifNil: [ application := MakrosApplication named: 'MTTurtleSIM' atHost: '127.0.0.1' onROS: 'http://127.0.0.1:11311' ]