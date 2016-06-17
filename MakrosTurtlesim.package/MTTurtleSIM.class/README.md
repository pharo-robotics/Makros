turtleSim := MTTurtleSIM new.

turtleSim start. 
turtle1 := turtleSim turtleNamed: 'turtle1'.

turtle1 pose.

turtle1 linear: 0.2 angular: 0.

turtleSim turtles colors.
turtleSim turtles poses.

turtleSim destroy.
turtleSim := nil.