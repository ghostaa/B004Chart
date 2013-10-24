define(["dojo",
        "dojo/store/util/QueryResults",
        "dojo/store/util/SimpleQueryEngine"],
        function(dojo, queryResult, _queryEngine) {
	/**
	 * provide basic function for BTT REST service
	 * API, need to be implemented by children
	 * 		1) _invoke(): load data
	 * 		2) _getRootData(): return data
	 * 
	 * TODO sort
	 */
	return dojo.declare("com.ibm.btt.store._BTTAbstractDataStore", null, {
		constructor: function(options, srcNodeRef){
			dojo.mixin(this, options);

			if ( srcNodeRef.id ) {
				this.id = srcNodeRef.id;
				if ( !dijit.byId(this.id) ) {
					//register dijit instance, use for dijit.byId()
					dijit.registry.add(this);
				}
			}
		},
		
		//service root path
		contextPath: "",
		dataRootPath: "",
		idProperty: "",
		
		//Common service header
		_commonHeaders:{
			"Content-Type": "application/json",
			"Accept" : "application/javascript, application/json"
		},
	
		//for BTT session
		_sessionPath: "/rest/session/establish",
		_sessionData: null,
		_requestData: null,
	
		// queryEngine: Function
		//		Defines the query engine to use for querying the data store
		queryEngine: _queryEngine,
	
		/*
		 * establish new BTT session
		 */
		establishSession: function() {
			if ( null == this._sessionData ) {
				var l_self = this;
				this._postRequest(this._sessionPath, null, null, function(response, a_io_args){
					l_self._sessionData = response;
					//TODO set session id
				});
			}
		},
		
		getRoot: function() {
			console.log("get root");
		},
		
		/**
		 * get identity data from object instance
		 * @param object
		 * @returns
		 */
		getIdentity: function(object) {
			return dojo.getObject(this.idProperty, false, object);
		},
		
		/**
		 * get context data
		 * @param id element's id
		 * @param options options.reload = true means need to reload this data from back-end server
		 */
		get: function(id, options) {
			console.debug("get", id, options);
			if ( !options && null != options ) {
				//TODO
				if ( options.reload ) {
					//reload
				}
			}
	
			var l_root_data = this._getRootData();
			if ( null != l_root_data ) {
				if ( null == id || !id) {
					return l_root_data;
				} else {
					//get it from local buffer
					return dojo.getObject(id, false, l_root_data);
				}
			} else {
				//TODO handle error
				console.error("root data not initialized");
			}
		},

		put: function(object, directives){
			// 	summary:
			//		Stores an object
			// 	object: Object
			//		The object to store.
			// directives: dojo.store.api.Store.PutDirectives?
			//		Additional directives for storing objects.
			//	returns: >= 0: success
			//			 <  0: fail
			console.debug("Submit data", object);
			console.debug("Options: ", directives);

			this._postRequest(this._getURL(), object, this._commonHeaders, function(response, a_io_args){
				l_self._sessionData = response;
				//TODO
				console.log("data", response);
			});
		},
	
		/**
		 * query data from back ground service
		 * @param query The query to use for retrieving objects from the store.
		 * @param options
		 * 			1) path: the root path of expected data
		 * 			2) startFlow: true, means need to start background flow
		 * 						  if flow already started, return data only
		 * 			3) flowEvent: if flow already started, then fire flow event with this parameter
		 * 						  if flow not started, "flowNotStarted" event will be fired and onError method will be called.
		 * 			4) requestData: request data that will be sent to server, available for fireEvent action only
		 */
		query: function(query, options) {
			console.debug("query", query, options);
	
			options = options||{};
			//1. prepare root data
			this._loadRootData(options);
	
			var l_query_option = options.queryOptions;
			var l_data_root_path = (l_query_option&&l_query_option.path)?l_query_option.path:this.dataRootPath;
	
			return this._createResultData(l_data_root_path, this._getRootData(), query, options);
		},

		_loadRootData: function(a_query_options) {
			//establish session if required
			this.establishSession();
	
			//prepare request data
			this._requestData = this._prepareRequestData(a_query_options);
	
			//invoke
			this._invoke(a_query_options);
		},
		
		_createResultData: function(a_root_path, response, query, options) {
			var l_result = null;
			var l_root_data = response;
			if ( l_root_data ) {
				if (  a_root_path ) {
					//get data from special path
					l_result = dojo.getObject(a_root_path, false, l_root_data);
				} else {
					//get data from root
					l_result = l_root_data;
				}
			}
	
			if ( l_result ) {
				if ( !dojo.isArray(l_result) ) {
					l_result = [l_result];
				}

				l_result = queryResult(this.queryEngine(query, {sort:options?options.sort:null})(l_result));
	
				//set total value when pagination is enabled
				if ( null != l_result && l_root_data.pagination && l_root_data.pagination.count > 0 ) {
					l_result.total = l_root_data.pagination.total;
				}
				
				console.debug("result", l_result);
	
				return l_result;
			} else {
				return [];
			}
		},
	
		/*
		 * prepare request data base on the a_request_param
		 * format of the a_request_param:
		 * 		name:<request parameter name>,
		 * 		id:<html element's ID>,
		 * 		property:<where to get value>
		 */
		_prepareRequestData: function(a_query_options) {
			var l_request_data = {};
			
			//prepare pagination parameter
			if ( a_query_options.count >= 0
					|| a_query_options.start >= 0 ) {
				var l_rang = {};
				l_rang.start = a_query_options.start || 0;
				l_rang.count = a_query_options.count || -1;
				l_request_data.pagination = l_rang;
			}
	
			//get data from
			var l_request_param = a_query_options.requestData;
			if ( null != l_request_param && "undefined" != l_request_param ) {
				dojo.forEach(l_request_param, function(item){
					var ls_property_name = item.property;
					var ls_param_name = item.name;
					if ( null != ls_property_name && "undefined" != ls_property_name
							&& null != ls_param_name && "undefined" != ls_param_name ) {
						//get source element
						if ( null != item.id && "undefined" != item.id ) {
							//1. try to find widget instance
							var l_element;
							var l_value;
							
							if ( null != (l_element = dijit.byId(item.id)) && "undefined" != l_element ) {
								//get value
								l_value = l_element.get(ls_property_name);
							} else if ( null != (l_element = dojo.byId(item.id)) && "undefined" != l_element ) {
								//search dojo element
								l_value = dojo.attr(l_element, ls_property_name);
							} else if ( null != (l_element = dojo.getObject(item.id)) && "undefined" != l_element ) {
								//global object: data-dojo-id/jsId
								l_value = l_element.get(ls_property_name);
							} else {
								//TODO element not found
								console.log("element not found", item.id);
							}
							
							if ( null != l_value && "undefined" != l_value ) {
								l_request_data[ls_param_name] = l_value;
							}
						}
					}
				});
			}
	
			return l_request_data;
		},

		/*
		 * post events to server side
		 */
		_postRequest: function(a_url, a_postdata, a_headers, a_load_handler) {
			var l_url = this.contextPath + a_url;
console.log(this.contextPath);
			var l_header = this._commonHeaders;
			if ( null != a_headers && "undefined" != a_headers ) {
				dojo.mixin(l_header, a_headers);
			}
	
			console.debug("data: ", a_postdata, this._requestData);
			//prepare post data
			var l_post_data = a_postdata;
			if ( null == l_post_data ) {
				l_post_data = {};
			}
			dojo.mixin(l_post_data, this._requestData);
			if ( null != l_post_data ) {
				l_post_data = dojo.toJson(l_post_data);
			}
			
			//self
			var l_self = this;
	
			return dojo.xhrPost({
				url: l_url,
				handleAs: "json",
				sync:true,
				postData: l_post_data,
				headers: this._commonHeaders,
				load: function(response, ioArgs) {
					//TODO check return result
					if ( a_load_handler ) {
						a_load_handler.call(l_self, response, ioArgs);
					}
				},
				error: function(error) {
					//TODO
					console.error(error);
				}
			});
		}
	});
});