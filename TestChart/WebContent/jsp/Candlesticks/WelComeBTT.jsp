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

  <div id="WelComeBTT_bttStoreWidget" data-dojo-props="operationName:'WelComeBTTOp',contextPath:'/TestChart'" data-dojo-type="com.ibm.btt.store.BTTOperationStore"></div>
  <div role="presentation" id="WelComeBTT_panel" class="BTTTableStyle">
    <div class="BTTRowStyle" role="presentation">
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:412px;height:300px;" id="WelComeBTT_dojox_charting_widget_Chart2D" theme="dojox.charting.themes.Claro" dojoType="dojox.charting.widget.Chart2D">
                <div class="plot" name="dojox_charting_widget_plotSmallArea" type="Areas" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series01" class="series" plot="dojox_charting_widget_plotSmallArea" fill="'#EDEDED'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'x','y':'!INDEX'}},rootPath:'ForAreaSmall'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotBigArea" type="Areas" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plotBigArea" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'x','y':'!INDEX'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotHiddenHead" type="Bars" minBarSize="27" labels="false" fill="'#DDDDDD'" stroke="{'style':'Solid','color':'#DDDDDD'}"></div>
              <div name="series04" class="series" plot="dojox_charting_widget_plotHiddenHead" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'hiddenHead'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotTHead" type="Bars" minBarSize="25" labels="false" fill="'#2D76BA'" stroke="{'style':'Solid','color':'#2D76BA'}"></div>
              <div name="series03" class="series" plot="dojox_charting_widget_plotTHead" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'head'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotT" type="Columns" minBarSize="25" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series02" class="series" plot="dojox_charting_widget_plotT" fill="'#2D76BA'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'high'}},rootPath:'ForAreaBig'})})"></div>
        </div>
      </div>
      <div class="BTTCellStyle" role="presentation" align="left" style="vertical-align:middle;">
        <div style="width:412px;height:300px;" id="WelComeBTT_dojox_charting_widget_Chart2D_copy" theme="dojox.charting.themes.ThreeD" dojoType="dojox.charting.widget.Chart2D">
              <div class="axis" name="x" includeZero="false" rotation="1"></div>
              <div class="axis" name="y" includeZero="false" vertical="true"></div>
                <div class="plot" name="dojox_charting_widget_plotLines" type="Lines" labels="false" animate="true" stroke="{'style':'Solid'}"></div>
                <div class="action" type="Highlight" plot="dojox_charting_widget_plotLines"></div>
                <div class="action" type="Shake" plot="dojox_charting_widget_plotLines"></div>
              <div stroke="{'color':'#FF0000'}" name="series05" class="series" plot="dojox_charting_widget_plotLines" fill="'#FF0000'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'BBK'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotSmallArea_copy" type="Areas" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series01" class="series" plot="dojox_charting_widget_plotSmallArea_copy" fill="'#FFFFFF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'x','y':'!INDEX'}},rootPath:'ForAreaSmall'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotBigArea_copy" type="Areas" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series" class="series" plot="dojox_charting_widget_plotBigArea_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'x','y':'!INDEX'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotHiddenHead_copy" type="Bars" minBarSize="27" labels="false" stroke="{'style':'Solid','color':'#FFFFFF'}"></div>
              <div name="series04" class="series" plot="dojox_charting_widget_plotHiddenHead_copy" fill="'#FFFFFF'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'hiddenHead'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotTHead_copy" type="Bars" minBarSize="25" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series03" class="series" plot="dojox_charting_widget_plotTHead_copy" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'head'}},rootPath:'ForAreaBig'})})"></div>
                <div class="plot" name="dojox_charting_widget_plotT_copy" type="Columns" minBarSize="25" labels="false" stroke="{'style':'Solid'}"></div>
              <div name="series02" class="series" plot="dojox_charting_widget_plotT_copy" fill="'#2D76BA'" store="new dojo.data.ObjectStore({objectStore:new com.ibm.btt.store.mapping.BTTMapping({store:dijit.byId('WelComeBTT_bttStoreWidget'),mappingOptions:{'value':{'x':'!INDEX','y':'high'}},rootPath:'ForAreaBig'})})"></div>
        </div>
      </div>
    </div>
  </div>


</body>
</html>