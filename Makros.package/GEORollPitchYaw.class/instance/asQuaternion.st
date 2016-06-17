converting
asQuaternion
	| i j k matrix cosins sins cisk cick sisk sick qr qi qj qk |
	"
i versor is related to x 
j versor is related with y
k versor is related with z
"
	i := 1.
	j := 2.
	k := 3.
	matrix := self collect: [ :it | it / 2.0 ].
	cosins := matrix collect: [ :it | it cos ].
	sins := matrix collect: [ :it | it sin ].
	cick := (cosins at: i) * (cosins at: k).
	cisk := (cosins at: i) * (sins at: k).
	sick := (sins at: i) * (cosins at: k).
	sisk := (sins at: i) * (sins at: k).
	qi := (cosins at: j) * sick - ((sins at: j) * cisk) roundUpTo: 0.001.
	qj := (cosins at: j) * sisk - ((sins at: j) * cick) roundUpTo: 0.001.
	qk := (cosins at: j) * cisk - ((sins at: j) * sick) roundUpTo: 0.001.
	qr := (cosins at: j) * cick - ((sins at: j) * sisk) roundUpTo: 0.001.
	^ Quaternion
		qr: qr
		qi: qi
		qj: qj
		qk: qk