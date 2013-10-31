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

  <div id="StackedLinesGrid_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="StackedLinesGrid_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesGrid_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" titleFontColor="#FF0080" y_titleFontColor="#8000FF" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" title="abc" titleGap="3" titleFontColor="#FF0080"></div>
                      <div class="axis" name="y" includeZero="false" vertical="true" title="def" titleGap="1" titleFontColor="#8000FF"></div>
                      <div class="plot" type="Grid" name="grid"></div>
                        <div class="plot" name="dojox_charting_widget_plot" type="StackedLines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesGrid_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesGrid_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesGrid_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.ThreeD" hMinorLines="true" vMinorLines="true" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false"></div>
                      <div class="axis" name="y" includeZero="false" vertical="true"></div>
                      <div class="plot" type="Grid" name="grid" hMinorLines="true" vMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot01" type="StackedLines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot01"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot01"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesGrid_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesGrid_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesGrid_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.MiamiNice" hMajorLines="false" vMajorLines="false" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false"></div>
                      <div class="axis" name="y" includeZero="false" vertical="true"></div>
                      <div class="plot" type="Grid" name="grid" hMajorLines="false" vMajorLines="false"></div>
                        <div class="plot" name="dojox_charting_widget_plot02" type="StackedLines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot02"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesGrid_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesGrid_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesGrid_label" text="hMajorLines,vMajorLines=true. hMinorLines,vMinorLines=false"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel05" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesGrid_label01" text="hMajorLines,vMajorLines,hMinorLines,vMinorLines=true"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesGrid_label02" text="hMajorLines,vMajorLines,hMinorLines,vMinorLines=false"/>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel07" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel08" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel09" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel10" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel11" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesGrid_panel12" class="BTTTableStyle">
          </div>
      </div>
    </div>
  </div>


</body>
</html>