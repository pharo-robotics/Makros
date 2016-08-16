as yet unclassified
sync
	points value ifNotNil: [ :cloud | cloud points do: [ :geo3dvector | rollingGrid at: geo3dvector put: self obstacleValue ] ]