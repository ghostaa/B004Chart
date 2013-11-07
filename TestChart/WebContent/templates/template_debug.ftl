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

${content}

</body>
</html>