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
		
				
		dojo.require("dojox.charting.themes.Adobebricks");
		dojo.require("dojox.charting.themes.Algae");
		dojo.require("dojox.charting.themes.Bahamation");
		dojo.require("dojox.charting.themes.BlueDusk");
		dojo.require("dojox.charting.themes.Charged");
		dojo.require("dojox.charting.themes.Chris");
		dojo.require("dojox.charting.themes.CubanShirts");
		dojo.require("dojox.charting.themes.Desert");
		dojo.require("dojox.charting.themes.Distinctive");
		dojo.require("dojox.charting.themes.Dollar");
		dojo.require("dojox.charting.themes.Electric");
		dojo.require("dojox.charting.themes.gradientGenerator");
		dojo.require("dojox.charting.themes.Grasshopper");
		dojo.require("dojox.charting.themes.Grasslands");
		dojo.require("dojox.charting.themes.GreySkies");
		dojo.require("dojox.charting.themes.Harmony");
		dojo.require("dojox.charting.themes.IndigoNation");
		dojo.require("dojox.charting.themes.Ireland");
		dojo.require("dojox.charting.themes.Julie");
		dojo.require("dojox.charting.themes.Midwest");
		dojo.require("dojox.charting.themes.Minty");
		dojo.require("dojox.charting.themes.PrimaryColors");
		dojo.require("dojox.charting.themes.PurpleRain");
		dojo.require("dojox.charting.themes.Renkoo");
		dojo.require("dojox.charting.themes.RoyalPurples");
		dojo.require("dojox.charting.themes.SageToLime")
		dojo.require("dojox.charting.themes.Shrooms");
		dojo.require("dojox.charting.themes.Tom");
		dojo.require("dojox.charting.themes.Tufte");
		dojo.require("dojox.charting.themes.WatersEdge");
		dojo.require("dojox.charting.themes.Wetland");	



		dojo.require("dojox.charting.widget.Legend");

		dojo.require("dojox.charting.action2d.Tooltip");
		dojo.require("dojox.charting.action2d.Highlight");
		dojo.require("dojox.charting.action2d.Shake");
	</script>

  <div id="CandlesticksTheme_bttStoreWidget" data-dojo-props="operationName:'StockOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="CandlesticksTheme_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel01" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel02" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel03" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel05" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Chris" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot" type="Candlesticks" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy" theme="dojox.charting.themes.Tom" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01" theme="dojox.charting.themes.PrimaryColors" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label" text="theme=dojox.charting.themes.Chris"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel08" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label01" text="theme=dojox.charting.themes.Tom"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label02" text="theme=dojox.charting.themes.PrimaryColors"/>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01_copy" theme="dojox.charting.themes.Electric" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01_copy" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01_copy"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01_copy"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01_copy"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01_copy" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01_copy" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01_copy01" theme="dojox.charting.themes.Charged" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01_copy01" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01_copy01"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01_copy01"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01_copy01"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01_copy01" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01_copy01" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01_copy01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01_copy02" theme="dojox.charting.themes.Renkoo" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01_copy02" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01_copy02"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01_copy02"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01_copy02"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01_copy02" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01_copy02" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01_copy02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel13" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label03" text="theme=dojox.charting.themes.Electric"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel14" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label04" text="theme=dojox.charting.themes.Charged"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel15" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label05" text="theme=dojox.charting.themes.Renkoo"/>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01_copy02_copy" theme="dojox.charting.themes.Adobebricks" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01_copy02_copy" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01_copy02_copy"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01_copy02_copy"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01_copy02_copy"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01_copy02_copy" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01_copy02_copy" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01_copy02_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01_copy02_copy01" theme="dojox.charting.themes.Algae" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01_copy02_copy01" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01_copy02_copy01"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01_copy02_copy01"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01_copy02_copy01"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01_copy02_copy01" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01_copy02_copy01" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01_copy02_copy01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="CandlesticksTheme_dojox_charting_widget_Chart2D_copy01_copy02_copy02" theme="dojox.charting.themes.Bahamation" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot_copy01_copy02_copy02" type="Candlesticks" markers="true" labels="false"></div>
                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot_copy01_copy02_copy02"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plot_copy01_copy02_copy02"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plot_copy01_copy02_copy02"></div>
                <div class="action" type="Magnify" plot="dojox_charting_widget_plot_copy01_copy02_copy02" scale="1.5"></div>
                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot_copy01_copy02_copy02" scale="1.5" shift="0"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot_copy01_copy02_copy02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('CandlesticksTheme_bttStoreWidget'),mappingOptions:{'value':{'high':'high','low':'low','close':'close','open':'open'}},rootPath:'StockList'})})"></div>
        </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel19" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label06" text="theme=dojox.charting.themes.Adobebricks"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel22" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label07" text="theme=dojox.charting.themes.Algae"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="CandlesticksTheme_panel23" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="CandlesticksTheme_label08" text="theme=dojox.charting.themes.Bahamation"/>
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>


</body>
</html>