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

  <div id="StackedBars_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="StackedBars_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" vMajorLines="false" vMinorLines="true" y_titleFontColor="#FF8080" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" title="somethingX" titleGap="0" titleOrientation="away" minorLabels="true" minorTickStep="500" microTicks="true" microTickStep="100" trailingSymbol="'>'" maxLabelCharCount="2"></div>
                      <div class="axis" name="y" includeZero="true" vertical="true" max="10" title="somethingY" titleGap="10" titleFontColor="#FF8080" titleOrientation="axis"></div>
                      <div class="plot" type="Grid" name="grid" vMajorLines="false" vMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot" type="StackedBars"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series1" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedBars_label" text="all properties in grid(titleOriental of Horizontal = away)"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot01" type="StackedBars" fill="'#FFFF00'"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot01" HighlightColor="#000000"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series2" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedBars_label02" text="highlight=true fill=yellow"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot05" type="StackedBars"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot05" HighlightColor="#80FF00"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel05" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D04" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot02" type="StackedBars" gap="5"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot02"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D03" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot03" type="StackedBars" gap="5" minBarSize="10"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot03"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot04" type="StackedBars" maxBarSize="50"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="StackedBars_label01" text="gap=5 minbarSize=0 higelight=true"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="StackedBars_label03" text="gap=5 minbarSize=10 tooltips=true"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="StackedBars_label04" text="gap=0 maxbarSize=50"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel07" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D08" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot06" type="StackedBars" Shadow="true" shadow="{dx:2,dy:2,width:2}" animate="true"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot06"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot06" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot06" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel08" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D07" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot07" type="StackedBars"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot07" scale="10"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot07" scale="5" shift="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot07" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot07" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D06" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot08" type="StackedBars"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot08" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot08" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="StackedBars_label05" text="shake=true animate=true shadow=ture"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="StackedBars_label06" text="Magnify&Move Slice=true"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D09" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot09" type="StackedBars"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot09" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot09" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedBars_panel10" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedBars_dojox_charting_widget_Chart2D10" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot10" type="StackedBars"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot10" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot10" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedBars_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
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
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
  </div>


</body>
</html>