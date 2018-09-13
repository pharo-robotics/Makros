as yet unclassified
testNonFindedTopicNameGivesTheGivenNameNormalized
	self assert: (table topicNameFor: #nonRegisteredTopicName) equals: '/nonRegisteredTopicName'