<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>Demo: Object Store Demonstration</title>
	<link rel="stylesheet" href="../../pure_dojo/dijit/themes/claro/claro.css" media="screen"/>
	<style type="text/css">
	.BTTTableStyle{
	display:table;
}
.BTTRowStyle{
	display:table-row;
}
.BTTCellStyle{
	display:table-cell;
	padding:1px;
}
</style>
</head>

<body class="claro">
	<!-- load dojo and provide config via data attribute -->
	<script src="../../pure_dojo/dojo/dojo.js"
			djConfig="baseUrl:'../../pure_dojo/dojo/',
					isDebug: false,
					parseOnLoad: true"></script>
	<script>
		//data store
		dojo.require("com.ibm.btt.store.BTTOperationStore");
		dojo.require("com.ibm.btt.store.mapping.BTTMapping");

		dojo.require("dojo.data.ObjectStore");

		//charting
		
		dojo.require("dojox.charting.widget.Chart2D");
		dojo.require("dojox.charting.themes.Claro");
		dojo.require("dojox.charting.themes.ThreeD");
		dojo.require("dojox.charting.themes.MiamiNice");

		dojo.require("dojox.charting.widget.Legend");

		dojo.require("dojox.charting.action2d.Tooltip");
		dojo.require("dojox.charting.action2d.Highlight");
		dojo.require("dojox.charting.action2d.Shake");
	</script>

  <div id="Mix_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="Mix_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:498px;height:433px;" id="Mix_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
              <div class="axis" name="x" includeZero="false" title="abc"></div>
                <div class="plot" name="dojox_charting_widget_plot02" type="Lines"></div>
              <div name="series03" class="series" plot="dojox_charting_widget_plot02" fill="'#FFFFFF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Mix_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                <div class="plot" name="dojox_charting_widget_plot01" type="Markers" markers="true"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot01" HighlightColor="#FF0000"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot01" fill="'#FFFF00'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Mix_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                <div class="plot" tension="x" name="dojox_charting_widget_plot" type="StackedColumns"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot" scale="1.5"></div>
              <div name="series02" class="series" plot="dojox_charting_widget_plot" fill="'#0080FF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Mix_bttStoreWidget'),mappingOptions:{'value':{'size':'size','tooltip':'label','x':'!INDEX','y':'amount','legend':'label'}},rootPath:'listFL'})})"></div>
              <div name="series01" class="series" plot="dojox_charting_widget_plot" fill="'#8000FF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Mix_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
        </div>
      </div>
    </div>
  </div>


</body>
</html>