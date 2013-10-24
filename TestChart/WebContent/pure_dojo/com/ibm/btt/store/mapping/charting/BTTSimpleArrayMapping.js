define(["dojo", "com/ibm/btt/store/mapping/_BTTAbstractMapping",
        "com/ibm/btt/store/mapping/BTTMappingEngine"],
		function(dojo, _abstractMapping, mappingEngine) {
	/*
	 * BTTSimpleArrayMapping: mapping for the dojox.charting.plot2d.Lines
	 */
	return dojo.declare("com.ibm.btt.store.mapping.charting.BTTSimpleArrayMapping", [_abstractMapping], {
		getValue: function(store, item, index) {
			if ( this.y ) {
				return {value:mappingEngine.getNumberValue(this.y, item)};
			} else {
				return {};
			}
		}
	});
});
