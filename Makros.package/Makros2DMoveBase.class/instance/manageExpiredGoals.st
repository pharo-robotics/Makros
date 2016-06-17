accessing
manageExpiredGoals
	| now |
	now := DateAndTime now asUnixTime.
	goals
		select: [ :g | g isStillOnGoing and: [ g isActive not and: [ g isExpiredAt: now ] ] ]
		thenDo: [ :g | self expire: g ]