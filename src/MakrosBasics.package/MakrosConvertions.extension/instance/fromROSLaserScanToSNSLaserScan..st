*MakrosBasics
fromROSLaserScanToSNSLaserScan: aSensorMsg_LaserScan
	"
http://docs.ros.org/api/sensor_msgs/html/msg/LaserScan.html

std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
float32 angle_min
float32 angle_max
float32 angle_increment
float32 time_increment
float32 scan_time
float32 range_min
float32 range_max
float32[] ranges
float32[] intensities
"

	| angleBoundaries angleIncrement rangeBundaries ranges scans |
	angleBoundaries := (aSensorMsg_LaserScan getAt: #angle_min) @ (aSensorMsg_LaserScan getAt: #angle_max).
	rangeBundaries := (aSensorMsg_LaserScan getAt: #range_min) @ (aSensorMsg_LaserScan getAt: #range_max).
	angleIncrement := aSensorMsg_LaserScan getAt: #angle_increment.
	ranges := aSensorMsg_LaserScan getAt: #ranges.
	scans := OrderedCollection new.
	ranges
		doWithIndex: [ :range :idx | 
			(range between: rangeBundaries x and: rangeBundaries y)
				ifTrue: [ | angle |
					angle := (angleBoundaries x + angleIncrement) * idx.
					scans
						add: angle;
						add: range ] ].
	^ SNSLaserScan new
		scans: scans;
		yourself