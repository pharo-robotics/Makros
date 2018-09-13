*Makros
rotatePosition: aPosition 
| quaternion  inverse |
	quaternion := self * aPosition.
	inverse := self inverse. 
	quaternion := quaternion * inverse.
	^ (GEOPosition x: quaternion qi y: quaternion qj z: quaternion qk).