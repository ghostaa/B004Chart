define(["dojo",
        "com/ibm/btt/store/mapping/_BTTAbstractMapping",
        "com/ibm/btt/store/mapping/BTTMappingEngine"],
		function(dojo, _abstractMapping, mappingEngine) {
	/*
	 * BTTCommonDataMapping: mapping for the dojox.charting.plot2d.Pie
	 */
	return dojo.declare("com.ibm.btt.store.mapping.charting.BTTComplexDataMapping", [_abstractMapping], {
		getValue: function(store, item, index) {
			var l_result = {};
			
			//value x
			if ( this.x ) {
				l_result.x = mappingEngine.getNumberValue(this.x, item);
			} else {
				l_result.x = index + 1;
			}
	
			//value y
			if ( this.y ) {
				l_result.y = mappingEngine.getNumberValue(this.y, item);
			}
			//legend
			if ( this.legend ) {
				l_result.legend = mappingEngine.getPropertyValue(this.legend, item);
			}
			
			//tool tip
			if ( dojo.isFunction(this.getTooltip) ) {
				l_result.tooltip = this.getTooltip(store, item, index);
			} else if ( l_result.y && l_result.legend ) {
				l_result.tooltip = l_result.legend + ":" + l_result.y;
			}
			
			//size
			if ( this.size ) {
				if ( dojo.isFunction(this.size) ) {
					l_result.size = this.size(mappingEngine, item);
				} else {
					l_result.size = mappingEngine.getNumberValue(this.size, item);
				}
			}
	
			return {value:l_result};
		}
	});
});
