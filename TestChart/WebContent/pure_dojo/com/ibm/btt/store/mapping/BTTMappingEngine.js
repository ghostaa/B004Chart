define(["dojo"], function(dojo) {
	/*
	 * Mapping engine, use for recreate client side data structure (AMD model)
	 * the mapping format
	 * 		{<target_property_name>:<source_property_name>||<function>,...}
	 * 		<target_property_name>: the property name in mapping target object
	 * 		<source_property_name>: the property name in source object
	 * 		<function>: java script function definition
	 * 
	 * example:
	 * 		{'item':{'y':function(item){
	 * 					return Number(item.amount);
	 * 				},
	 * 		 'legend':'label',
	 * 		 'tooltip':function(item){
	 * 					return item.label + ':' + item.amount;
	 * 				}
	 * 		}
	 */
	return {
		/*
		 * get property value from item
		 */
		getPropertyValue: function(as_property, item) {
			var l_value;
			if ( as_property ) {
				l_value = dojo.getObject(as_property, false, item);
			}
	
			if ( l_value ) {
				return l_value;
			} else {
				return undefined;
			}
		},
		
		/*
		 * get property value from item and try to convert that value to number, otherwise, return 0;
		 */
		getNumberValue: function(as_property, item) {
			var l_value = this.getPropertyValue(as_property, item);
			if ( l_value && NaN !== (l_value = Number(l_value)) ) {
				return l_value;
			} else {
				return 0;
			}
		},
	
		/*
		 * do mapping base on the mapping configuration
		 */
		doMapping: function(a_context, a_mapping_config, a_element) {
			if ( a_mapping_config ) {
				var l_self = this;
				var l_result =
					dojo.map(a_element, function(item, index){
						return l_self._doMapping(a_context, a_mapping_config, item, index);
					});
				
				return l_result;
			} else {
				//no mapping, use original data
				return a_element;
			}
		},
		
		_doMapping: function(a_context, a_configure, a_data_source, index) {
			var l_result_item = {};
			var l_value;
			for ( l_item in a_configure ) {
				var l_map_item = a_configure[l_item];
	
				if ( dojo.isFunction(l_map_item) ) {
					//is function
					l_result_item[l_item] = l_map_item.call(this, a_context, a_data_source, index);
				} else if ( dojo.isString(l_map_item) ) {
					//item name
					if ( l_value = dojo.getObject(l_map_item, false, a_data_source) ) {
						l_result_item[l_item] = l_value;
					}
				} else if ( dojo.isObject(l_map_item) ) {
					//is JSON object
					l_result_item[l_item] = this._doMapping(a_context, l_map_item, a_data_source, index);
				} else {
					l_result_item[l_item] = l_item;
				}
			}
	
			return l_result_item;
		}
	};
});