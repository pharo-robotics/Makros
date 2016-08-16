component-private
setupIn: anApplication
	| projector scan tf |
	projector := Laser2DProjector forApp: anApplication.
	scan := MakrosTopicSubscriber forApp: anApplication onTopOfTopicNamed: '/scan'.
	tf := TFComponent setupIn: anApplication.
	anApplication
		routeFrom: scan
		port: #incoming
		to: projector
		port: #scan.
	anApplication
		routeFrom: tf
		port: #container
		to: projector
		port: #tf.
	^ scan