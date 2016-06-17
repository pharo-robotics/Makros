a Makros2DMoveBase is a component that connects with ROS move base and uses goals defined in 2 Dimensions: x,y points and z angle.


	application := MakrosApplication named: 'MakrosMoveBaseExample' atHost: NetNameResolver loopBackAddressString  onROS: 'http://127.0.0.1:11311/' .
	Makros2DMoveBase setupIn: application. 
	application configure.
	application start. 
	application destroy. 