component-private
basicPortInstantiation 
	 ^ {#tf => MakoInputPort type: #TFFrameContainer.#scan => MakrosInputPort type: #'sensor_msgs/LaserScan'.#points => MakoOutputPort type: #SNSPointCloud}.