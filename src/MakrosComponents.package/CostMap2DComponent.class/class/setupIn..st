component-private
setupIn: anApplication
	^ self
		setupIn: anApplication
		withLaserProjector: (Laser2DProjector setupIn: anApplication)