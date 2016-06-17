as yet unclassified
testNonFindedTopicNameGivesTheGivenNameNormalized2
	self assert: (table topicNameFor: '//nonRegisteredTopicName') equals: '/nonRegisteredTopicName'