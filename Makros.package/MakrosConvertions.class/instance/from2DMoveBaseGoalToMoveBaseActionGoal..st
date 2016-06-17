local to ros
from2DMoveBaseGoalToMoveBaseActionGoal: aMakros2DMoveBaseGoal
	^ [ :message | 
	message header stamp: #now.
	message header frame_id: aMakros2DMoveBaseGoal frame.
	message goal_id stamp: aMakros2DMoveBaseGoal stamp.
	message goal_id id: aMakros2DMoveBaseGoal id.
	message goal target_pose header stamp: DateAndTime now.
	message goal target_pose header frame_id: aMakros2DMoveBaseGoal frame.
	message goal target_pose pose position x: aMakros2DMoveBaseGoal pose position x.
	message goal target_pose pose position y: aMakros2DMoveBaseGoal pose position y.
	message goal target_pose pose orientation w: aMakros2DMoveBaseGoal pose orientation qr.
	message goal target_pose pose orientation x: aMakros2DMoveBaseGoal pose orientation qi.
	message goal target_pose pose orientation y: aMakros2DMoveBaseGoal pose orientation qj.
	message goal target_pose pose orientation z: aMakros2DMoveBaseGoal pose orientation qk ]