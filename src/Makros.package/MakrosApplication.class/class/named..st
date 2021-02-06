as yet unclassified
named: aName
	^ self
		named: aName
		atHost: (OSPlatform current environment at: #ROS_HOSTNAME)
		onROS: (OSPlatform current environment at: #ROS_MASTER_URI)