tree operations
convert: aPose to: aFrame
	| pseudo |
	pseudo := self class name: 'pseudo-frame' parent: self.
	pseudo pose: aPose asTransform.
	^ aFrame poseRelativeTo: pseudo