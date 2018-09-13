*MakrosBasics
fromKINVelocityToROSTwist: aKINVelocity
	^ [ :velocity | 
	velocity linear x: aKINVelocity linear x.
	velocity linear y: aKINVelocity linear y.
	velocity linear z: aKINVelocity linear z.
	velocity angular x: aKINVelocity angular roll.
	velocity angular y: aKINVelocity angular pitch.
	velocity angular z: aKINVelocity angular yaw ]