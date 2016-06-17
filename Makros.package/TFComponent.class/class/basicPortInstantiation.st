component-private
basicPortInstantiation 
	 ^ {#sync => MakoSyncPort onSync: #sync.#tfOut => MakrosOutputPort type: #'tf2_msgs/TFMessage'.#tfIn => MakrosInputPort type: #'tf2_msgs/TFMessage'.#container => MakoOutputPort type: #TFFrameContainer}.