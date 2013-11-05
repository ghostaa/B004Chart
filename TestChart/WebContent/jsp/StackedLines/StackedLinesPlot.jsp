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

  <div id="StackedLinesPlot_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="StackedLinesPlot_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" rotation="1"></div>
                      <div class="axis" name="y" includeZero="false" vertical="true"></div>
                        <div class="plot" tension="S" name="dojox_charting_widget_plot" type="StackedLines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" tension="X" name="dojox_charting_widget_plot01" type="StackedLines" markers="true" labels="false" precision="2" fill="'#800080'"></div>
                        <div class="action" type="Tooltip"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot01" highlight="#FF0080"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot01"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot01" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot01" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" tension="x" name="dojox_charting_widget_plot02" type="StackedLines" labels="false" fill="'#FF0080'"></div>
                        <div class="action" type="Tooltip"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot02" scale="5" shift="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesPlot_label" text="tension=S,Tooltip=true,marker=true"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel05" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesPlot_label01" text="tension=X,fill=purple,Tooltip=true,highColor=pink;marker=true"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesPlot_label02" text="tension=x,Tooltip=true,marker=false"/>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel07" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D03" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot03" type="StackedLines" markers="true" labels="false" shadow="{dx:5,dy:5,width:5,color:'#D7F2F7'}" animate="true"></div>
                        <div class="action" type="Tooltip"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot03"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot03"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel08" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D04" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot04" type="StackedLines" markers="true" labels="false"></div>
                        <div class="action" type="Tooltip"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot04" scale="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot05" type="StackedLines" markers="true" labels="false" animate="true"></div>
                        <div class="action" type="Tooltip"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot05"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot05" scale="5" shift="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" fill="'#8080C0'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                      <div name="series01" class="series" plot="dojox_charting_widget_plot05" fill="'#800040'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel10" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesPlot_label03" text="Shadow=true,x=5,y=5,width=5,color=gray,shake=true"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel11" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesPlot_label04" text="Magnify scale=5"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="StackedLinesPlot_panel12" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="StackedLinesPlot_label05" text="MoveSlice shift=5,scale=5,Animate=true"/>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:400px;height:300px;" id="StackedLinesPlot_dojox_charting_widget_Chart2D06" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plot06" type="StackedLines" markers="true" labels="false" fill="'#FF8000'"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plot06" fill="'#8080FF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
              <div name="series01" class="series" plot="dojox_charting_widget_plot06" fill="'#FFFFFF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('StackedLinesPlot_bttStoreWidget'),mappingOptions:{'value':'amount'},rootPath:'listFL'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
  </div>


</body>
</html>