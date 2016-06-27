as yet unclassified
setupIn: anApplication
	| movebase moveBaseGoal moveBaseCancel moveBaseFeedback moveBaseStatus |
	movebase := Makros2DMoveBase forApp: anApplication.
	moveBaseGoal := MakrosTopicPublisher
		forApp: anApplication
		onTopOfTopicNamed: '/move_base/goal'.
	moveBaseCancel := MakrosTopicPublisher
		forApp: anApplication
		onTopOfTopicNamed: '/move_base/cancel'.
	moveBaseFeedback := MakrosTopicSubscriber
		forApp: anApplication
		onTopOfTopicNamed: '/move_base/feedback'.
	moveBaseStatus := MakrosTopicSubscriber
		forApp: anApplication
		onTopOfTopicNamed: '/move_base/status'.
	anApplication
		routeFrom: movebase
		port: #goal
		to: moveBaseGoal
		port: #outgoing.
	anApplication
		routeFrom: movebase
		port: #cancel
		to: moveBaseCancel
		port: #outgoing.
	anApplication
		routeFrom: moveBaseStatus
		port: #incoming
		to: movebase
		port: #status.
	anApplication
		routeFrom: moveBaseFeedback
		port: #incoming
		to: movebase
		port: #feedback.
	^ movebase