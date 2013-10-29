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

  <div id="Bars_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="Bars_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" vMajorLines="false" vMinorLines="true" titleFontColor="#0000FF" y_titleFontColor="#FF8040" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" min="7000" max="8000" title="somethingX" titleGap="0" titleFontColor="#0000FF" titleOrientation="axis" minorLabels="true" minorTickStep="200" trailingSymbol="'/'" maxLabelSize="10"></div>
                      <div class="axis" name="y" includeZero="true" vertical="true" min="10" max="30" title="somethingY" titleFontColor="#FF8040" titleOrientation="away" maxLabelCharCount="2"></div>
                      <div class="plot" type="Grid" name="grid" vMajorLines="false" vMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot" type="Bars"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" tension="X" name="dojox_charting_widget_plot01" type="Bars" precision="5" fill="'#00FF00'"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" tension="x" name="dojox_charting_widget_plot02" type="Bars" fill="'#FF00FF'"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot02" HighlightColor="#FFFFFF"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D03" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" tension="S" name="dojox_charting_widget_plot03" type="Bars" markers="true"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot03"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="Bars_label" text="All the properties in grid"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="Bars_label01" text="tension=X precision=5 tooltip=false"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="Bars_label02" text="tension=x percision=1 highcolor=true tooltip=true"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="Bars_label03" text="tension=S tooltip=true makers=true"/>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel05" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D04" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot04" type="Bars" minBarSize="10" maxBarSize="100"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot04"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot05" type="Bars" gap="5" minBarSize="10" maxBarSize="100"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D07" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="20"></div>
                        <div class="plot" name="dojox_charting_widget_plot07" type="Bars" gap="10" minBarSize="50" maxBarSize="100"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot07"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot07"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot07" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
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
        <bttdojo:label id="Bars_label04" text="gap=0 minbarSize=10 maxbarSize=100"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="Bars_label05" text="gap=5 minbarsize=10 maxbarsize=100"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel07" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="Bars_dojox_charting_widget_Chart2D06" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="10" max="30"></div>
                        <div class="plot" name="dojox_charting_widget_plot06" type="Bars" Shadow="true" shadow="{dx:1,dy:1,width:3}"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot06" scale="10"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot06" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('Bars_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="Bars_panel08" class="BTTTableStyle">
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