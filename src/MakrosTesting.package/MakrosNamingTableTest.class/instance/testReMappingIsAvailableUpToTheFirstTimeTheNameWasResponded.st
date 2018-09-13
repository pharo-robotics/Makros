as yet unclassified
testReMappingIsAvailableUpToTheFirstTimeTheNameWasResponded
	table registerTopicRemap: 'otherRegisteredTopic' to: 'otherRegisteredTopic'.
	table registerTopicRemap: 'otherRegisteredTopic' to: 'otherRegisteredTopica'.
	table registerTopicRemap: 'otherRegisteredTopic' to: 'otherRegisteredTopicb'.
	table registerTopicRemap: 'otherRegisteredTopic' to: 'otherRegisteredTopicc'.
	table topicNameFor: '/otherRegisteredTopic'.
	self
		should: [ table registerTopicRemap: 'otherRegisteredTopic' to: 'otherRegisteredTopic' ]
		raise: Error
		description: 'Remapping should not be available after the name was already showed to anyone '