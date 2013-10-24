define(["dojo", "com/ibm/btt/store/_BTTAbstractDataStore", "com/ibm/btt/store/util/BTTClientDataUtil"], function(dojo, _abstractStore, bindingUtil) {
	/**
	 * Store object use for interactive with background BTT flows
	 */
	return dojo.declare("com.ibm.btt.store.BTTFlowStore", [_abstractStore], {
		//for BTT flow
		flowStarted: false,
		flowId : "",
		_flowRootPath: "/rest/flows/",
		processorId: null,
		_flowData: null,
	
		/**
		 * start flow
		 * @returns
		 */
		startFlow: function(a_btt_params) {
			if ( !this.flowStarted ) {
				var l_self = this;
				this.flowStarted = true;
	
				return this._postRequest(this._flowRootPath + this.flowId, null, a_btt_params, function(response, ioArgs) {
					l_self.processorId = "/" + response.dse_processorId;
					l_self._flowData = response;
				});
			}
		},
		
		/**
		 * use for XUI tools
		 */
		fireFlowEvent2: function(eventName, requestData, a_binding_config, a_complet_func) {
			var l_self = this;
			this.fireFlowEvent(
					eventName,
					{
						request: requestData,
						bindingCfg: l_self.bindingCfg[a_binding_config]||window[a_binding_config]||{},
						onComplete: a_complet_func
					});
		},
	
		/**
		 * fire flow event
		 * @param eventName
		 * @returns
		 */
		fireFlowEvent: function(eventName, a_options) {
			var l_self = this;
			
			//prepare request data
			var l_options = a_options || {};
			var l_request_data = l_options.request || {};
			l_request_data.dse_nextEventName = eventName;

			console.debug("request data", l_request_data);
			var l_binding_cfg = l_options.bindingCfg || {};
			
			return this._postRequest(
					//service path
					this._getURL(),
					//parameters
					l_request_data,
					//request header
					null,
					//handler
					function(response, ioArgs) {
						this._flowData = response;
						var l_data = l_self._createResultData(l_binding_cfg.rootPath || this.dataRootPath, this._getRootData());
						
						//do data binding
						if ( l_binding_cfg.config ) {
							bindingUtil.bindData(l_binding_cfg.config, /* TODO */l_data[0]);
						}

						//call response handler
						if ( l_options && typeof l_options.onComplete == "function" ) {
							l_options.onComplete.call(this, l_data);
						}
				});
		},
		
		/*
		 * before query function, use this function to get root data object
		 */
		_invoke: function(a_query_params) {
			var queryOptions = a_query_params.queryOptions;
			if ( !this.flowStarted) {
				//start flow if current flow has not started.
				this.startFlow();
			}
			
			if ( queryOptions && typeof queryOptions.flowEvent == "string"
				&& queryOptions.flowEvent.length > 0 ) {
				//fire new flow event
				this.fireFlowEvent(queryOptions.flowEvent, null, null);
			}
		},
	
		/*
		 * return flow root data
		 */
		_getRootData: function() {
			return this._flowData;
		},

		/*
		 * get service URL
		 */
		_getURL: function() {
			return this._flowRootPath + this.flowId + this.processorId;
		}
	});
});