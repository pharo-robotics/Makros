component-private
setupIn: anApplication withLaserProjector: aProjector
	| costmap renderer |
	costmap := CostMap2DComponent forApp: anApplication.
	renderer := CostMapRendererComponent forApp: anApplication.
	anApplication
		routeFrom: aProjector
		port: #points
		to: costmap
		port: #points.
	anApplication
		routeFrom: costmap
		port: #costmap
		to: renderer
		port: #costmap.
	^ costmap