as yet unclassified
setUp
	super setUp.
	table := MakrosNamingTable new.
	table registerTopicRemap: 'otherRegisteredTopic' to: 'otherRegisteredTopic'.
	table registerServiceRemap: '/registeredTopic' to: '/registeredService'.
	table registerTopicRemap: '/registeredTopic' to: '/reMappedTopicName'.
	table registerTopicRemap: '/registeredTopic/secondTerm' to: '/reMappedTopicName/secondPart'.
