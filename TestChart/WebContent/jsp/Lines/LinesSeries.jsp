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

  <div id="LinesSeries_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="LinesSeries_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="LinesSeries_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot" type="Lines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('LinesSeries_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                        <div class="plot" name="dojox_charting_widget_plot01" type="Lines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot01"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot01"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot01"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot01" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot01" scale="1.5" shift="0"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('LinesSeries_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel02" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel03" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel04" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel05" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel06" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel07" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel08" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel09" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel10" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel11" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="LinesSeries_panel12" class="BTTTableStyle">
          </div>
      </div>
    </div>
  </div>


</body>
</html>