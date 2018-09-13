as yet unclassified
testRegisteredTopicGivesRegisteredName
	self assert: (table topicNameFor: '/registeredTopic') equals: '/reMappedTopicName'.