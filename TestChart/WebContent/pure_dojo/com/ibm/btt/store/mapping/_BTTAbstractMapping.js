define(["dojo", "com/ibm/btt/store/mapping/BTTMappingEngine"], function(dojo, mappingEngine) {
	/*
	 * Mapping model base functions
	 */
	return dojo.declare("com.ibm.btt.store.mapping._BTTAbstractMapping", null, {
		constructor: function(options, srcNodeRef){
			dojo.mixin(this, options);
		},

		y: null,
		x: null,
		legend: 'label',
		size: null,
	
		/**
		 * do mapping on 
		 * @param a_data
		 * @returns
		 */
		doMapping: function(a_data) {
			var l_self = this;
			if ( dojo.isFunction(a_data.map) ) {
				return a_data.map(function(item, index){
					return l_self.getValue(a_data, item, index);
				});
			} else {
				return dojo.map(a_data, function(item, index){
					return l_self.getValue(a_data, item, index);
				});
			}
		}
	});
});
