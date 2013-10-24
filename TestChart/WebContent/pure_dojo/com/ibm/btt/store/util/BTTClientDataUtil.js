define(["dojo"], function(dojo) {
	/*
	 * BTTClientDataUtil: manage client side data
	 * 		1) Collect data from current page and convert to JSON
	 * 		2) Set data in JSON format into current page
	 * Configuration data formation
	 * 		1) Base format
	 * 			[{<item-configure>}, {<item-configure>}]
	 * 		2) <item-configure>
	 * 			name:<request parameter name>,
	 * 			id:<html element's ID>,
	 * 			property:<where to get value>
	 */
	return {
		/*
		 * prepare request data base on the a_request_param
		 * format of the a_request_param:
		 * 		name:<request parameter name>,
		 * 		id:<html element's ID>,
		 * 		property:<where to get value>
		 */
		collectData: function(configuration) {
			var l_page_data = {};
			dojo.forEach(configuration, function(item){
				var ls_property_name = item.property;
				var ls_param_name = item.name;
				if ( null != ls_property_name && undefined !== ls_property_name
						&& null != ls_param_name && undefined !== ls_param_name ) {
					//get source element
					if ( item && item.id ) {
						//1. try to find widget instance
						var l_element;
						var l_value;
						
						if ( null != (l_element = dijit.byId(item.id)) && undefined !== l_element ) {
							//get value
							l_value = l_element.get(ls_property_name);
						} else if ( null != (l_element = dojo.byId(item.id)) && undefined !== l_element ) {
							//search dojo element
							l_value = dojo.attr(l_element, ls_property_name);
						} else if ( null != (l_element = dojo.getObject(item.id)) && undefined !== l_element ) {
							//global object: data-dojo-id/jsId
							l_value = l_element.get(ls_property_name);
						} else {
							//TODO element not found
							console.error("element not found", item.id);
						}
						
						if ( null != l_value && undefined !== l_value ) {
							l_page_data[ls_param_name] = l_value;
						}
					}
				}
			});
	
			return l_page_data;
		},
		
		bindData: function(configuration, data) {
			dojo.forEach(configuration, function(item) {
				var l_value;
				if ( item && item.id && item.dataName && (l_value = data[item.dataName]) ) {
					var l_property_name = item.property || "value";
					var l_element;
					if ( l_element = dijit.byId(item.id) ) {
						l_element.set(l_property_name, l_value);
					} else if ( l_element = dojo.byId(item.id) ) {
						l_element[l_property_name] = l_value;
					}
				}
			});
		}
	};
});