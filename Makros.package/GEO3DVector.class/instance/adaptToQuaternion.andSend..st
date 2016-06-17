adapt
adaptToQuaternion: aQuaternion andSend: aByteSymbol
	^ Quaternion
		qr: ((aQuaternion qi * -1) * self x) - (aQuaternion qj * self y) - (aQuaternion qk * self z)
		qi: (aQuaternion qr * self x) + (aQuaternion qj * self z) - (aQuaternion qk * self y)
		qj: (aQuaternion qr * self y) + (aQuaternion qk * self x) - (aQuaternion qi * self z)
		qk: (aQuaternion qr * self z) + (aQuaternion qi * self y) - (aQuaternion qj * self x)
		