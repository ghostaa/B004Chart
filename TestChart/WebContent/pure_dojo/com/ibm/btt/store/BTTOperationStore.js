define(["dojo", "com/ibm/btt/store/_BTTAbstractDataStore"], function(dojo, _abstractStore) {
	/**
	 * BTT DataStore use for interaction with background BTT operations
	 */
	return dojo.declare("com.ibm.btt.store.BTTOperationStore", [_abstractStore], {
		//name of BTT operation
		operationName: '',
	
		_operationRootPath: "/rest/operations/",
		_operationData: null,
		
		/*
		 * invoke background service(operation)
		 */
		_invoke: function() {
			var l_self = this;
			this._postRequest(
					//service path
					this._getURL(),
					{}, null,
					function(response, ioArgs) {
						l_self._operationData = response;
					});
		},
	
		/*
		 * return flow root data
		 */
		_getRootData: function() {
			return this._operationData;
		},
		
		/*
		 * get service URL
		 */
		_getURL: function() {
			return this._operationRootPath + this.operationName;
		}
	});
});
