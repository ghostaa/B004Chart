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

  <div id="PiePlot_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="PiePlot_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot" type="Pie" labels="false" radius="150"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot" shift="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot01" type="Pie" labelOffset="-20" radius="150"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot01" scale="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.MiamiNice" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot02" type="Pie" markers="true" radius="150" animate="true"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot02" HighlightColor="#FF0080"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot02"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D03" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" tension="X" name="dojox_charting_widget_plot03" type="Pie" fill="'#FF0080'" radius="150"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot03"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot03" HighlightColor="#00FF00"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'size':'size','tooltip':'label','x':'!INDEX','y':'amount','legend':'label'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel05" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label" text="radius=150,labelStyle=default,shift=5"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label01" text="Label=true,labelOffset=-20,scale=5"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel07" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label02" text="Tooltip=true,highLight=true,Animate=true"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel08" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label03" text="Tooltip=true,highLight=true,fill=pink"/>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label04" text="labelStyle=columns"/>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel10" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D04" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot04" type="Pie" markers="true" labelStyle="columns" radius="150"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot04" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot04" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel11" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel12" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel13" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                  <div role="presentation" id="PiePlot_panel17" class="BTTTableStyle">
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                        <bttdojo:label id="PiePlot_label05" text="labelStyle=rows,Shake=true"/>
                      </div>
                    </div>
                  </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel14" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot05" type="Pie" markers="true" labelStyle="rows" radius="150"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot05"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot05"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot05"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel15" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel16" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel18" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label06" text="labelStyle=auto,　scale=5"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel19" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D06" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot06" type="Pie" markers="true" labelStyle="auto" radius="150"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot06"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot06"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot06" scale="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot06" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel20" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel21" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="PiePlot_dojox_charting_widget_Chart2D07" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot07" type="Pie" precision="2" radius="150"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot07" scale="5"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot07" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('PiePlot_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount','legend':'label'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel23" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel24" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="PiePlot_label07" text="precision=2,Magnify=true,scale=5"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel25" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="PiePlot_panel26" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
  </div>


</body>
</html>