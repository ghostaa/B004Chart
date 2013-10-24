define(["dojo"], function(dojo) {
	/*
	 * Mapping model base functions
	 */
	return dojo.declare("com.ibm.btt.store.mapping.BTTMapping", null, {
		constructor: function(options, srcNodeRef){
			dojo.mixin(this, options);
		},

		/*
		 * store object
		 */
		store: null,
		
		rootPath: "",
		/*
		 * mapping option
		 */
		mappingOptions: {},
		
		doMapping: function(a_scope, a_result_data) {
			return dojo.map(a_result_data, function(a_item, a_index) {
				return a_scope._doDeepMapping(a_scope, a_scope.mappingOptions, a_item, a_index);
			});
		},
		
		_doDeepMapping: function(a_scope, a_mapping_options, a_data, a_index) {
			var l_new_data = {};
			for ( l_field in a_mapping_options ) {
				var l_field_name = l_field;
				var l_item = a_mapping_options[l_field_name];

				var l_value;
				if ( dojo.isObject(l_item) ) {
					l_value = a_scope._doDeepMapping(a_scope, l_item, a_data, a_index);
				} else if ( dojo.isString(l_item) ) {
					if ( l_item ) {
						if ( l_item == "!INDEX" ) {
							l_value = a_index;
						} else {
							l_value = dojo.getObject(l_item, false, a_data);
						}
					} else {
						//console.debug("Skip empty field: ", l_field_name);
						continue;
					}
				} else if ( dojo.isFunction(l_item) ) {
					l_value = l_item.call(a_scope, a_data, a_index);
				} else {
					//console.debug("Skip unknown type field:", l_field_name);
					continue;
				}

				if ( isNaN(l_value) ) {
					l_new_data[l_field_name] = l_value;
				} else {
					l_new_data[l_field_name] = Number(l_value);
				}
			}

			return l_new_data;
		},

		/**
		 * query data from store instance and mapping result if mapping is provided 
		 */
		query: function(query, queryOptions) {
			var l_result;
			if ( this.store ) {
				if ( dojo.isFunction(this.store.query) ) {
					l_result = this.store.query(query, queryOptions);

					if ( l_result && this.mappingOptions ) {
						//do mapping
						//backup observable info
						var l_observer = l_result.observer;
						
						if ( this.rootPath ) {
							l_result = l_result[0][this.rootPath];
							console.log("Root path: ", l_result);
						}
						//do mapping
						l_result = this.doMapping(this, l_result);

						if ( l_observer ) {
							l_result.observer = l_observer;
						}
						
						//TODO create index
						console.debug("after mapping", l_result, this.mappingOptions);
					}
				} else {
					console.error("Function 'query' not provided by the store instance", this.store);
				}
			} else {
				console.error("Store instance is required");
			}

			if ( l_result ) {
				return l_result;
			} else {
				return null;
			}
		}
	});
});
