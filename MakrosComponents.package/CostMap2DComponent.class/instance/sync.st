as yet unclassified
sync
	points value
		ifNotNil: [ :cloud | 
			cloud points do: [ :geo3dvector | self rollingGrid at: geo3dvector put: self obstacleValue ].
			costmap value: self rollingGrid ]