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

  <div id="ColumnsGrid_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="ColumnsGrid_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D03" theme="dojox.charting.themes.Claro" vMajorLines="false" titleFontColor="#0080FF" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" title="vMajorLines=false,vMinorLines=false" titleFontColor="#0080FF"></div>
                      <div class="plot" type="Grid" name="grid" vMajorLines="false"></div>
                        <div class="plot" name="dojox_charting_widget_plot03" type="Columns" markers="true"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot03"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot03"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot03"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot03" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot03" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'size':'size','tooltip':'label','x':'!INDEX','y':'amount','legend':'label'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" titleFontColor="#FF0000" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" title="vMajorLines=true,vMinorLines=false" titleGap="5" titleFontColor="#FF0000" titleOrientation="axis"></div>
                      <div class="plot" type="Grid" name="grid"></div>
                        <div class="plot" name="dojox_charting_widget_plot" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.Claro" vMajorLines="false" vMinorLines="true" titleFontColor="#00FF00" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" title="vMajorLines=false,vMinorLines=true" titleFontColor="#00FF00" titleOrientation="away"></div>
                      <div class="plot" type="Grid" name="grid" vMajorLines="false" vMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot01" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.Claro" vMinorLines="true" titleFontColor="#008040" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" title="vMajorLines=true,vMinorLines=true" titleFontColor="#008040"></div>
                      <div class="plot" type="Grid" name="grid" vMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot02" type="Columns" markers="true"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot02"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot02"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" majorTickStep="20" minorTickStep="4"></div>
                        <div class="plot" name="dojox_charting_widget_plot05" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="ColumnsGrid_label" text="major step=20,minor step=4"/>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel05" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D04" theme="dojox.charting.themes.Claro" y_includeZero="true" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="x" includeZero="false" min="10" max="20" minorLabels="true" microTicks="true"></div>
                      <div class="plot" type="Grid" name="grid"></div>
                        <div class="plot" name="dojox_charting_widget_plot04" type="Columns" markers="true"></div>
                        <div class="action" type="Tooltip" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Highlight" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Shake" plot="dojox_charting_widget_plot04"></div>
                        <div class="action" type="Magnify" plot="dojox_charting_widget_plot04" scale="1.5"></div>
                        <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot04" scale="1.5" shift="0"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'tooltip':'label','x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="ColumnsGrid_label01" text="major,minor and micro ticks =true.min=10,max=20"/>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="ColumnsGrid_label04" text="major and minor label=true"/>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel13" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D08" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                        <div class="plot" name="dojox_charting_widget_plot08" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot08" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <bttdojo:label id="ColumnsGrid_label05" text="Label"/>
              </div>
            </div>
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel14" class="BTTTableStyle">
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                  <div role="presentation" id="ColumnsGrid_panel07" class="BTTTableStyle">
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                        <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D06" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                              <div class="axis" name="x" includeZero="false" min="10" max="20" titleOrientation="axis" maxLabelSize="1"></div>
                                <div class="plot" name="dojox_charting_widget_plot06" type="Columns" markers="true"></div>
                                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot06"></div>
                                <div class="action" type="Highlight" plot="dojox_charting_widget_plot06"></div>
                                <div class="action" type="Shake" plot="dojox_charting_widget_plot06"></div>
                                <div class="action" type="Magnify" plot="dojox_charting_widget_plot06" scale="2"></div>
                                <div class="action" type="MoveSlice" plot="dojox_charting_widget_plot06" scale="2" shift="5"></div>
                              <div name="series" class="series" plot="dojox_charting_widget_plot06" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                        </div>
                      </div>
                    </div>
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                        <bttdojo:label id="ColumnsGrid_label02" text="maxLabelSize=1px,trailingSymbol=empty"/>
                      </div>
                    </div>
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                      </div>
                    </div>
                  </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel10" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                  <div role="presentation" id="ColumnsGrid_panel08" class="BTTTableStyle">
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                        <div style="width:400px;height:300px;" id="ColumnsGrid_dojox_charting_widget_Chart2D07" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                              <div class="axis" name="x" includeZero="false" min="20" max="30" trailingSymbol="~" maxLabelCharCount="1"></div>
                                <div class="plot" name="dojox_charting_widget_plot07" type="Columns" markers="true"></div>
                                <div class="action" type="Tooltip" plot="dojox_charting_widget_plot07"></div>
                                <div class="action" type="Highlight" plot="dojox_charting_widget_plot07"></div>
                              <div name="series" class="series" plot="dojox_charting_widget_plot07" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                        </div>
                      </div>
                    </div>
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                        <bttdojo:label id="ColumnsGrid_label03" text="maxLabelCharCount=1,trailingSymbol=~"/>
                      </div>
                    </div>
                  </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel11" class="BTTTableStyle">
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsGrid_panel12" class="BTTTableStyle">
          </div>
      </div>
    </div>
  </div>


</body>
</html>