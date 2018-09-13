accessing
application: anApplication
	super application: anApplication.
	application := anApplication.
	
	anApplication
		when: MakoAnnouncementWrittenPort
		takeFromAnnouncement: #(#port #newValue)
		andSend: #noteWrittenPort:newValue:
		to: self.
	