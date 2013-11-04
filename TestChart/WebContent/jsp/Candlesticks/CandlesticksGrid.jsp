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

  <div id="CandlesticksGrid_bttStoreWidget" data-dojo-props="operationName:'StockOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="CandlesticksGrid_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksGrid_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="CandlesticksGrid_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" hMajorLines="false" hMinorLines="true" y_titleFontColor="#FF8080" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="true" rotation="1" title="somethingX" titleGap="0" minorLabels="true" minorTickStep="5" microTicks="true" microTickStep="1" maxLabelSize="5"></div>
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20" title="sonethingY" titleGap="5" titleFontColor="#FF8080" titleOrientation="away" trailingSymbol="'&'" maxLabelCharCount="1"></div>
                      <div class="plot" type="Grid" name="grid" hMajorLines="false" hMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot" type="Candlesticks" labels="false"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksGrid_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','mid':'min','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksGrid_panel02" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
  </div>


</body>
</html>