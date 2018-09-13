accessing
topic
	^ (MDDSTopicDescriptor domain: application domain name: topicName type: outgoing type) createTopic.