component-private
basicPortInstantiation 
	 ^ {#sync => MakoSyncPort onSync: #sync.#echo => MakrosOutputPort type: #'std_msgs/String'}.