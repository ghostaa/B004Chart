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

  <div id="ColumnsVerticalGrid_bttStoreWidget" data-dojo-props="operationName:'TableListOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="ColumnsVerticalGrid_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel01" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" y_titleFontColor="#00FF00" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="true" vertical="true" title="hMajorLines=true,hMinorLines=false" titleFontColor="#00FF00"></div>
                      <div class="plot" type="Grid" name="grid"></div>
                        <div class="plot" name="dojox_charting_widget_plot" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel02" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D01" theme="dojox.charting.themes.Claro" hMajorLines="false" hMinorLines="true" vMajorLines="false" vMinorLines="true" y_titleFontColor="#FF8040" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="true" vertical="true" title="hMajorLines=false,hMinorLines=true" titleFontColor="#FF8040"></div>
                      <div class="plot" type="Grid" name="grid" hMajorLines="false" hMinorLines="true" vMajorLines="false" vMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot01" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot01" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel03" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D02" theme="dojox.charting.themes.Claro" hMinorLines="true" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="true" vertical="true" title="hMajorLines=true,hMinorLines=true"></div>
                      <div class="plot" type="Grid" name="grid" hMinorLines="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot02" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot02" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel04" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                  <div role="presentation" id="ColumnsVerticalGrid_panel05" class="BTTTableStyle">
                    <div class="BTTRowStyle" role="presentation">
                      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                        <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D03" theme="dojox.charting.themes.Claro" vMajorLines="false" dojoType="dojox.charting.widget.Chart2D">
                              <div class="axis" name="y" includeZero="true" vertical="true" title="hMajorLines=false,hMinorLines=false"></div>
                              <div class="plot" type="Grid" name="grid" vMajorLines="false"></div>
                                <div class="plot" name="dojox_charting_widget_plot03" type="Columns"></div>
                              <div name="series" class="series" plot="dojox_charting_widget_plot03" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel07" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D04" theme="dojox.charting.themes.Claro" hMajorLines="false" vMajorLines="false" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="true" vertical="true" majorTickStep="500" minorTickStep="100"></div>
                        <div class="plot" name="dojox_charting_widget_plot04" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot04" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel08" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D05" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="3000" max="8000" minorLabels="true" microTicks="true"></div>
                        <div class="plot" name="dojox_charting_widget_plot05" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot05" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel09" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D06" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="4000" max="5000" minorTicks="false"></div>
                        <div class="plot" name="dojox_charting_widget_plot06" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot06" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel06" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D07" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="4000" max="5000" minorLabels="true" minorTickStep="50" microTicks="true" microTickStep="10"></div>
                        <div class="plot" name="dojox_charting_widget_plot07" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot07" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label" text="major step=500  minor step=100"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label01" text="major,minor and micro ticks =true.min=3000,max=8000"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label02" text="Microticks ,Minorticks=false Majortocks=true"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label03" text="minortickstep=50 microtickstep=10"/>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label04" text="major and minor label=true"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel10" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D08" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" min="2000" max="6000" minorLabels="true" microTicks="true" maxLabelSize="15"></div>
                        <div class="plot" name="dojox_charting_widget_plot08" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot08" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel11" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D09" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="true" vertical="true" trailingSymbol="'*'" maxLabelSize="5"></div>
                        <div class="plot" name="dojox_charting_widget_plot09" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot09" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel12" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D10" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" maxLabelCharCount="2"></div>
                        <div class="plot" name="dojox_charting_widget_plot10" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot10" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
          <div role="presentation" id="ColumnsVerticalGrid_panel13" class="BTTTableStyle">
            <div class="BTTRowStyle" role="presentation">
              <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
                <div style="width:400px;height:300px;" id="ColumnsVerticalGrid_dojox_charting_widget_Chart2D11" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                      <div class="axis" name="y" includeZero="false" vertical="true" title="somethingY" titleOrientation="away"></div>
                        <div class="plot" name="dojox_charting_widget_plot11" type="Columns"></div>
                      <div name="series" class="series" plot="dojox_charting_widget_plot11" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('ColumnsVerticalGrid_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'amount'}},rootPath:'listFL'})})"></div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label05" text="maxLabelSize=15px(defect)"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label06" text="trailingSymbol=\"*\""/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label07" text="maxLabelCharCount=2"/>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <bttdojo:label id="ColumnsVerticalGrid_label08" text="titleOriental=away"/>
      </div>
    </div>
  </div>


</body>
</html>