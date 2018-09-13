as yet unclassified
benchmark
	| app |
	app := MakrosApplication named: 'bench' atHost: '127.0.0.1' onROS: 'http://127.0.0.1:11311'.
	self setupIn: app.
	^ app