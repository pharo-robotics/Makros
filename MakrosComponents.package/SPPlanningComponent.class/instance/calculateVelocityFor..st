as yet unclassified
calculateVelocityFor: aTransform
	| x yaw |
	"This is strictly for a differential robot"
	x := 0.5 * (0 @ 0 distanceTo: aTransform position x @ aTransform position y).
	yaw := 4 * (aTransform position y arcTan: aTransform position x).
	x := self force: x between: 0.0 and: 0.5.
	yaw := self force: yaw between: -0.5 and: 0.5.
	^ KINVelocity x: x yaw: yaw

	"	msg.angular.z = 4 * math.atan2(trans.transform.translation.y, trans.transform.translation.x)
     	msg.linear.x = 0.5 * math.sqrt(trans.transform.translation.x ** 2 + trans.transform.translation.y ** 2)
"