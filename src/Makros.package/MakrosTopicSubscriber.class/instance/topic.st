accessing
topic
	^ (MDDSTopicDescriptor domain: application domain name: topicName type: incoming type) createTopic.