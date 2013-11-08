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

  <div id="OHLCStroke_bttStoreWidget" data-dojo-props="operationName:'StockOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="OHLCStroke_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="OHLCStroke_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot" type="OHLC" labels="false" stroke="{'style':'Solid','color':'#FF0000','width':2}"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy" type="OHLC" labels="false" stroke="{'style':'ShortDash','color':'#FF0000','width':2}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy01" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01" type="OHLC" labels="false" stroke="{'style':'ShortDot','color':'#FF0000','width':2}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label" text="strokestyle=solid"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label01" text="shortDash"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label02" text="shortDot"/>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy02" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy02" type="OHLC" labels="false" stroke="{'style':'ShortDashDot','color':'#FF0000','width':2}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03" type="OHLC" labels="false" stroke="{'style':'ShortDashDotDot','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy04" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy04" type="OHLC" labels="false" stroke="{'style':'Dot','color':'#FF0000','width':2}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label03" text="ShortDashDot"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label04" text="ShortDashDotDot"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label05" text="Dot"/>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03_copy" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03_copy" type="OHLC" labels="false" stroke="{'style':'Dash','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03_copy01" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03_copy01" type="OHLC" labels="false" stroke="{'style':'LongDash','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03_copy01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03_copy02" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03_copy02" type="OHLC" labels="false" stroke="{'style':'DashDot','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03_copy02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label06" text="Dash"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label07" text="longDash"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label08" text="DashDot"/>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03_copy03" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03_copy03" type="OHLC" labels="false" stroke="{'style':'LongDashDot','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03_copy03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03_copy04" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03_copy04" type="OHLC" labels="false" stroke="{'style':'LongDashDotDot','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03_copy04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="OHLCStroke_dojox_charting_widget_Chart2D_copy03_copy05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy03_copy05" type="OHLC" labels="false" stroke="{'style':'none','color':'#804040'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy03_copy05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('OHLCStroke_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label09" text="LongDashDot"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label10" text="LongDashDotDot"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="OHLCStroke_label11" text="none"/>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
  </div>


</body>
</html>