define(["dojo",
        "com/ibm/btt/store/mapping/BTTMappingEngine",
		"com/ibm/btt/store/mapping/charting/BTTComplexDataMapping",
		"com/ibm/btt/store/mapping/charting/BTTSimpleArrayMapping",
		"dojo/store/util/QueryResults"],
		function(dojo, mappingEngine, dataMapping, simpleArrayMapping, queryResult) {
/*
 * Mapping model base functions
 */
return dojo.declare("com.ibm.btt.store.mapping.charting.BTTCommonChartingMappingStore", null, {
	constructor: function(options, srcNodeRef){
		dojo.mixin(this, options);
		
		if ( this.store ) {
			//get mapping properties
			if ( !this.mapping && options.mappingOptions ) {
				if ( this.simple ) {
					this.mapping = new simpleArrayMapping(options.mappingOptions);
				} else {
					this.mapping = new dataMapping(options.mappingOptions);
				}
			}
			
			this.queryEngine = this.store.queryEngine;
		} else {
			console.error("Require store option");
		}
	},

	store:null,
	queryEngine: null,
	mapping:null,
	/*
	 * type of data mapping,
	 * 		true: will use the com.ibm.btt.store.mapping.charting.BTTSimpleArrayMapping
	 * 		false: will use the com.ibm.btt.store.mapping.charting.BTTCommonDataMapping
	 */
	simple:false,
	
	/**
	 * query data from store instance and mapping result if mapping is provided 
	 */
	query: function(query, queryOptions) {
		var l_result;
		if ( this.store ) {
			if ( dojo.isFunction(this.store.query) ) {
				l_result = this.store.query(query, queryOptions);

				if ( l_result && this.mapping ) {
					//do mapping
					if ( dojo.isFunction(this.mapping.doMapping) ) {
						//backup observable info
						var l_observer = l_result.observer;
						
						//TODO do mapping (hard code)
						l_result = this.mapping.doMapping(l_result);

						if ( l_observer ) {
							l_result.observer = l_observer;
						}
						
						//TODO create index

						console.debug("after mapping", l_result, l_result.map);
					} else {
						console.error("Function doMapping not provied by the mapping instance", this.mapping);
					}
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
