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

  <div id="Test_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="Test_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="Test_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" tension="x" name="dojox_charting_widget_plot" type="Bars"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot" HighlightColor="#8000FF"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot" fill="'#FF00FF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Test_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
        </div>
      </div>
    </div>
  </div>


</body>
</html>