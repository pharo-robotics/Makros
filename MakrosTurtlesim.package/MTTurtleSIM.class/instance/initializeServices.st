start
initializeServices
	spawn := self application serviceCallerFor: '/spawn' type: #'turtlesim/Spawn'.
	servingSample := self application
		serve: [ :rq :rp | self inform: 'Services sample called' ]
		asServiceNamed: '/sample'
		type: #'std_srvs/Empty'