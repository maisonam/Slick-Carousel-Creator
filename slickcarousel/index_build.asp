<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>jQuery library</title>
  <meta name="description" content="jQuery library">
  <meta name="author" content="Chris Ormerod">
   
<link rel=stylesheet href="script/codemirror/doc/docs.css">

<link rel="stylesheet" href="script/codemirror/lib/codemirror.css">
<link rel="stylesheet" href="../jquerylibrary_form/style.css">
<script src="script/codemirror/lib/codemirror.js"></script>
<script src="script/codemirror/mode/xml/xml.js"></script>
<script src="script/codemirror/mode/javascript/javascript.js"></script>
<script src="script/codemirror//mode/css/css.js"></script>
<script src="script/codemirror/mode/htmlmixed/htmlmixed.js"></script>
<script src="script/codemirror/mode/htmlembedded/htmlembedded.js"></script>
  <style type="text/css">
    #plugin{float:left;width:312px;}
	div.toggle_header h2,div.toggle_header h3 {
		color:#fff;
		font-size:116.7%;
		font-weight:bold;
		float:left;
		width:312px;
		margin: 0 0 2px 0; 
		padding:0;
		line-height: 1.1em;
	}
	div.toggle_header h3 a, div.toggle_header h3 a:visited {
		background:#dee89b;
		float:left;
		margin:0;
		padding:6px 0 6px 10px;
		text-decoration:none;
		width:302px;
	}
	div.toggle_header h3 a:hover, div.toggle_header h3 a:active, div.toggle_header h3 a:focus {
		background:#dee89b;
		text-decoration:underline;
	}
	div.toggle_header h3 a.lit, div.toggle_header h3 a.lit:visited, div.toggle_header h3 a.lit:hover, div.toggle_header h3 a.lit:active, div.toggle_header h3 a.lit:focus {
		background:#cbdb61;
	}
	div.togglecontainer {margin-top:3px;}
	div.togglecontainer, div.toggle_header, div.toggle_body {
		float:left;
		width:312px;
	}
	div.toggle_header {border-bottom: 1px solid #8da042;}
	div.toggle_body {
		margin-top:6px;
		border-bottom: 1px solid #8da042;
	}
	div.toggle_body p {
		line-height:1.2em;
		padding-right:0;
	}
	div.toggle_header div.open_slide {
		float:right;
		text-align:right;
		width:32px;
	}
	div.closed {display:none;}
	
	.inner {
	float: left;
	width: 25%;
	padding: 10px;
	border: 1px solid #000;
	min-height: 300px;	
	}
	
	
	.jayess {
		float:left;
		width: 25%;
	}
	
	.preview {
	width: 97%;	
	}
	
	iframe{
		border:none;
		width:100%;
		height:100%;
	}
	
	#liveSource {
		clear:both;
	}
	#box{display:none;}
  </style>
</head>

<body>
	<!--#include file ="qry_userinput.asp"-->
	<%
		getUserInput("querystring")

		if instr(qs_validationfailed,",pageid,") or qs_pageid="" then
			qs_pageid = "1"
			qsEncoded_pageid = "1"
		end if
		if instr(qs_validationfailed,",toggleid,") then
			qs_toggleid = ""
			qsEncoded_toggleid = ""
		end if
		
	%>
	<section>
		<div class="heading">
			<h1>Addison Group code library</h1>
			<img src="http://www.addison-group.net/assets/images/logos/sitelogo.png" alt="Addison Group" class="floatright" width="100" />
		</div>
		<div class="clear">&nbsp;</div>
		<header>
			<div class="codedescription">
				<h2>Light-weight toggle panel</h2>
				<p>A simple but relatively customisable toggle content function. You can also open individual tabs via url using &issue=1 etc</p>
			</div>
			<aside>
				<h2>Plugin variables</h2>
				<div id="variables">
					<form id="changevariables">
						<fieldset id="source-switch">
							<div class="source_button">
								<h2>Source editor</h2>
								<input type="checkbox" id="switch" name="switch" value="switch">
							</div>
						</fieldset>
					</form>
				</div>
			</aside>
		</header>
		<div class="clear">&nbsp;</div>
<article id="democontainer">
	<div id="plugin">
		<h2 class="demo">Demo</h2>
		<div class="togglecontainer">
			<div class="toggle_header">
				<h3><a href="index.asp?pageid=<%=qsEncoded_pageid%>&amp;toggleid=1#togglecontent" class="open" id="issue_1">Discharges</a></h3>
			</div>     
			<div class="toggle_body clearboth<%if qs_toggleid <> "1" then%> closed<%end if%>">
				<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel dui neque, in aliquet est. Integer a ligula ut massa tempus blandit. Aenean sit amet justo quam. Nulla vel fringilla purus. Mauris ornare, orci vitae eleifend posuere, tortor leo dignissim ipsum, at tristique eros enim ac quam. </p>
		  </div>
		</div>
		
		<div class="togglecontainer">
			<div class="toggle_header">
				<h3><a href="index.asp?pageid=<%=qsEncoded_pageid%>&amp;toggleid=2#togglecontent" class="open" id="issue_2">Air and water quality</a></h3>
			</div>     
			<div class="toggle_body clearboth<%if qs_toggleid <> "2" then%> closed<%end if%>">
				<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel dui neque, in aliquet est. Integer a ligula ut massa tempus blandit. Aenean sit amet justo quam. Nulla vel fringilla purus. Mauris ornare, orci vitae eleifend posuere, tortor leo dignissim ipsum, at tristique eros enim ac quam. </p>
		  </div>
		</div>
		
		<div class="togglecontainer">
			<div class="toggle_header">
				<h3><a href="index.asp?pageid=<%=qsEncoded_pageid%>&amp;toggleid=3#togglecontent" class="open" id="issue_3">Waste management</a></h3>
			</div>     
			<div class="toggle_body clearboth<%if qs_toggleid <> "3" then%> closed<%end if%>">
				<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel dui neque, in aliquet est. Integer a ligula ut massa tempus blandit. Aenean sit amet justo quam. Nulla vel fringilla purus. Mauris ornare, orci vitae eleifend posuere, tortor leo dignissim ipsum, at tristique eros enim ac quam. </p>
		  </div>
		</div>
	
	</div>
	
</article>


	</section>
	<aside class="grab-demosource">
		<p><a href="#" id="demosource">Grab source</a></p>
		<output></output>
	</aside>
	

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
	<script src="script/json.js"></script>
	
  
	<script type="text/javascript" language="javascript" id="plugin">

		$.fn.togglecontent = function(options) {
		//Create togglecontent's default options
			var defaults = {
				scrollspeed: 300,
				openfirstslide: true,
				addclosebutton: true,
				openall: false
			};
			
			var currenturl = location.href;
			
			/*! get query string value - useful for webmetrics */
			var getquerystringvalue=function(a,b){if(!b){b=window.location.href}var c=new RegExp("[?|&]"+a+"=(.*?)&"),d=c.exec(b+"&");if(!d||d.length<2){return""}else{return decodeURIComponent(d[1].replace("+"," "))}}
			
			$pageid = getquerystringvalue("pageid",currenturl);
					
			//Extend "defaults" to togglecontent()'s argument "options"
			var settings = $.extend(defaults, options);
				return this.each(function() {		
				var element = $(this);
				  
				//Adds close link to bottom of panel if closebutton: 'yes' 
				if (settings.addclosebutton) {
					$(element).find(".togglecontainer div.toggle_body").each(function (index, closepanel) {
						$(closepanel).append("<p><a href=\"#\" class=\"closepanel\">Close</a></p>");
					});
				}
				var theurl = (window.location.href.indexOf("toggleid="));
				
				//Opens first panel on load  if openfirstslide is true
				if ((settings.openfirstslide) && (theurl == -1)) {
					$(element).find(".togglecontainer div.toggle_body:first").show();
					$(element).find(".togglecontainer div.toggle_header a:first").addClass("lit").addClass("open");
				}
				
				//Adds open all link to above the first div  if openall: true
				if (settings.openall) {
					if($(element).find(".openall").length == 0){
						$(element).find(".togglecontainer:first").before("<p><a href=\"#\" class=\"openall\">Open all</a></p>");
					}
				}
				
				function panelmetrics(slidemessage){
					if(typeof(_gat)!='undefined'){_gat._getTrackerByName()._trackEvent('Toggle content (pageid='+$pageid+'): '+slidemessage);}	
				}
				
				function slidemechanism(slideid,direction,metrics){
					var toggleToOpen = $("#"+slideid).closest("div.togglecontainer").find("div.toggle_body");	
					if (direction == "up") {
						$(toggleToOpen).slideUp(settings.scrollspeed);
						$("#"+slideid).removeClass("lit");
						if(metrics){panelmetrics(+slideid+ 'was closed');}
					}else{
						$(toggleToOpen).slideDown(settings.scrollspeed);
						$("#"+slideid).addClass("lit");
						if(metrics){panelmetrics(+slideid+ 'was opened');}
					}	
				}
				
				// The click event either opens the slide or closes it
				$(element).find("div.toggle_header").on('click','a', function(e) {
					var currentitem=$(this);
					var togglename =$(this).attr("id");
					currentitem.hasClass("lit") ? slidemechanism(togglename,"up",true) : slidemechanism(togglename,"down",true);	
					return false;
				});	
				
				// The click event for the close link added at the bottom
				$(document).find(element).on('click','a.closepanel', function(event) {
						var findparent = $(this).closest("div.togglecontainer").find("div.toggle_header a.open");	
						var findparentid = $(findparent).attr("id");		
						slidemechanism(findparentid,"up")
					return false;
				});	
				
				// The click event for the openall close all link
				$(element).on('click','a.openall', function(g) {
					var currentitem=$(this);		
					var setdirection = currentitem.hasClass("allopened") ? "up" : "down";
					
					$(element).find("div.togglecontainer").each(function (index, openall) {
						var togglename =$(openall).find("div.toggle_header a").attr("id");
						slidemechanism(togglename,setdirection,false)
					});
					
					setdirection == "up" ? $(currentitem).text("Open all").removeClass("allopened") : $(currentitem).text("Close all").addClass("allopened");						   									   
						
					return false;
				});	
					
			});
		};
		
	var $pluginTemplate = "$.fn.togglecontent = function(options) {\n\t\t\x2F\x2FCreate togglecontent\'s default options\n\t\t\t##default-variables##\n\t\t\t\n\t\t\tvar currenturl = location.href;\n\t\t\t\n\t\t\t\x2F*! get query string value - useful for webmetrics *\x2F\n\t\t\tvar getquerystringvalue=function(a,b){if(!b){b=window.location.href}var c=new RegExp(\"[?|\&]\"+a+\"=(.*?)\&\"),d=c.exec(b+\"\&\");if(!d||d.length\x3C2){return\"\"}else{return decodeURIComponent(d[1].replace(\"+\",\" \"))}}\n\t\t\t\n\t\t\t$pageid = getquerystringvalue(\"pageid\",currenturl);\n\t\t\t\t\t\n\t\t\t\x2F\x2FExtend \"defaults\" to togglecontent()\'s argument \"options\"\n\t\t\tvar settings = $.extend(defaults, options);\n\t\t\t\treturn this.each(function() {\t\t\n\t\t\t\tvar element = $(this);\n\t\t\t\t  \n\t\t\t\t\x2F\x2FAdds close link to bottom of panel if closebutton: \'yes\' \n\t\t\t\tif (settings.addclosebutton) {\n\t\t\t\t\t$(element).find(\".togglecontainer div.toggle_body\").each(function (index, closepanel) {\n\t\t\t\t\t\t$(closepanel).append(\"\x3Cp\x3E\x3Ca href=\\\"#\\\" class=\\\"closepanel\\\"\x3EClose\x3C\x2Fa\x3E\x3C\x2Fp\x3E\");\n\t\t\t\t\t});\n\t\t\t\t}\n\t\t\t\tvar theurl = (window.location.href.indexOf(\"toggleid=\"));\n\t\t\t\t\n\t\t\t\t\x2F\x2FOpens first panel on load  if openfirstslide is true\n\t\t\t\tif ((settings.openfirstslide) \&\& (theurl == -1)) {\n\t\t\t\t\t$(element).find(\".togglecontainer div.toggle_body:first\").show();\n\t\t\t\t\t$(element).find(\".togglecontainer div.toggle_header a:first\").addClass(\"lit\").addClass(\"open\");\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\t\x2F\x2FAdds open all link to above the first div  if openall: true\n\t\t\t\tif (settings.openall) {\n\t\t\t\t\tif($(element).find(\".openall\").length == 0){\n\t\t\t\t\t\t$(element).find(\".togglecontainer:first\").before(\"\x3Cp\x3E\x3Ca href=\\\"#\\\" class=\\\"openall\\\"\x3EOpen all\x3C\x2Fa\x3E\x3C\x2Fp\x3E\");\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tfunction panelmetrics(slidemessage){\n\t\t\t\t\tif(typeof(_gat)!=\'undefined\'){_gat._getTrackerByName()._trackEvent(\'Toggle content (pageid=\'+$pageid+\'): \'+slidemessage);}\t\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\tfunction slidemechanism(slideid,direction,metrics){\n\t\t\t\t\tvar toggleToOpen = $(\"#\"+slideid).closest(\"div.togglecontainer\").find(\"div.toggle_body\");\t\n\t\t\t\t\tif (direction == \"up\") {\n\t\t\t\t\t\t$(toggleToOpen).slideUp(settings.scrollspeed);\n\t\t\t\t\t\t$(\"#\"+slideid).removeClass(\"lit\");\n\t\t\t\t\t\tif(metrics){panelmetrics(+slideid+ \'was closed\');}\n\t\t\t\t\t}else{\n\t\t\t\t\t\t$(toggleToOpen).slideDown(settings.scrollspeed);\n\t\t\t\t\t\t$(\"#\"+slideid).addClass(\"lit\");\n\t\t\t\t\t\tif(metrics){panelmetrics(+slideid+ \'was opened\');}\n\t\t\t\t\t}\t\n\t\t\t\t}\n\t\t\t\t\n\t\t\t\t\x2F\x2F The click event either opens the slide or closes it\n\t\t\t\t$(element).find(\"div.toggle_header\").on(\'click\',\'a\', function(e) {\n\t\t\t\t\tvar currentitem=$(this);\n\t\t\t\t\tvar togglename =$(this).attr(\"id\");\n\t\t\t\t\tcurrentitem.hasClass(\"lit\") ? slidemechanism(togglename,\"up\",true) : slidemechanism(togglename,\"down\",true);\t\n\t\t\t\t\treturn false;\n\t\t\t\t});\t\n\t\t\t\t\n\t\t\t\t\x2F\x2F The click event for the close link added at the bottom\n\t\t\t\t$(document).find(element).on(\'click\',\'a.closepanel\', function(event) {\n\t\t\t\t\t\tvar findparent = $(this).closest(\"div.togglecontainer\").find(\"div.toggle_header a.open\");\t\n\t\t\t\t\t\tvar findparentid = $(findparent).attr(\"id\");\t\t\n\t\t\t\t\t\tslidemechanism(findparentid,\"up\")\n\t\t\t\t\treturn false;\n\t\t\t\t});\t\n\t\t\t\t\n\t\t\t\t\x2F\x2F The click event for the openall close all link\n\t\t\t\t$(element).on(\'click\',\'a.openall\', function(g) {\n\t\t\t\t\tvar currentitem=$(this);\t\t\n\t\t\t\t\tvar setdirection = currentitem.hasClass(\"allopened\") ? \"up\" : \"down\";\n\t\t\t\t\t\n\t\t\t\t\t$(element).find(\"div.togglecontainer\").each(function (index, openall) {\n\t\t\t\t\t\tvar togglename =$(openall).find(\"div.toggle_header a\").attr(\"id\");\n\t\t\t\t\t\tslidemechanism(togglename,setdirection,false)\n\t\t\t\t\t});\n\t\t\t\t\t\n\t\t\t\t\tsetdirection == \"up\" ? $(currentitem).text(\"Open all\").removeClass(\"allopened\") : $(currentitem).text(\"Close all\").addClass(\"allopened\");\t\t\t\t\t\t   \t\t\t\t\t\t\t\t\t   \n\t\t\t\t\t\t\n\t\t\t\t\treturn false;\n\t\t\t\t});\t\n\t\t\t\t\t\n\t\t\t});\n\t\t};\n$(\"#plugin\").togglecontent();"
	
	</script>

	
	<script type="text/javascript" id="callplugin">
	$(function() {
			
			$optionsform = $("#variables");
			//$optionsform.prepend("<form id=\"changevariables\"></form>");
			$setdelay = "";
			$calledplugin = "";
			$demoarticle = $("#democontainer");
			$democontainer = $("#plugin");
		
			$availablevariables = {
				scrollspeed: 300,
				openfirstslide: true,
				addclosebutton: false,
				openall: false
			}
			

			var callplugin = {
				init:function(){
					$democontainer.togglecontent($availablevariables);
				},
				change:function(){
					$demoarticle.load("index.asp" + " #plugin", function(){
						$demoarticle = $("#democontainer");
						$democontainer = $("#plugin");
						$democontainer.togglecontent($availablevariables);
						
					});
				}
			}
			var getOption = function(option,defaultsetting){
				var gettype = typeof defaultsetting;
				switch (gettype){
					case "number":
					$optionsform.find("form").prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"range\" min=\"50\" max=\"2000\" step=\"50\" value=\""+defaultsetting+"\" /><span>"+defaultsetting+"</span></fieldset>");
					break;
					default:
					var setchecked = defaultsetting ? " checked=\"checked\"" : "";
					$optionsform.find("form").prepend("<fieldset><label for=\""+option+"\">"+option+"</label><input id=\""+option+"\" type=\"checkbox\" value=\""+defaultsetting+"\""+setchecked+" /><span>"+defaultsetting+"</span></fieldset>");
				}
			}
			var stringToBoolean= function(string){
				if(!isNaN(string)){stringoutput=parseFloat(string);}else{stringoutput=string.toLowerCase()};
				
				switch(stringoutput){
					case "true": case "yes": 
					return true
					return Boolean(stringoutput);
					break;
					case "false": case "no": case null: 
					return false
					return Boolean(stringoutput);
					break;
					default: 
					return stringoutput;
				}
			}
			
			var createmenu = function(){
				for (var key in $availablevariables) {
				   var obj = $availablevariables[key];
				   getOption(key,obj);
				}
			}
			createmenu();
			callplugin.init();
			
			
			
			$(document).on('change',"input",function(e){
				  var currentitem = $(this);
				  var getoption = currentitem.attr("id");
				  var getvalue = currentitem.val();

				  if (currentitem.attr('type') == "checkbox"){
					var getvalue = currentitem.is(':checked') ? "true" : "false" ;
				  }

				  clearTimeout($setdelay);
				  $setdelay = setTimeout(function() {
					currentitem.next("span").text(getvalue);
					$availablevariables[getoption] = stringToBoolean(getvalue);
					callplugin.change();
				  }, 600);
			});
			
			
			
			$.getScript("script/livequery_init.js")
			
		});</script>
		
	

	
	
	
	
	<div id="box">
	<div id="codemirror-html"><p>HTML</p><br /><textarea id="html" name="html" class="inner html"></textarea></div>
	<div id="codemirror-css"><p>CSS</p><br /><textarea id="css" name="css" class="inner css"></textarea></div>
	<div id="codemirror-js" class="jayess">
	<div><p>JavaScript</p><br /><textarea id="js" name="js" class="inner js"></textarea></div>
	<a href="#" class="submit">submit</a>
	</div>
	<div class="inner preview">
		<iframe id="previewtaget">
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
			<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			</head>
			<body id="iframe">
			</body>
			</html>
		</iframe>
	</div>
		<aside class="grab-demosource"><p><a href="#" id="source">Grab source</a></p>
		<output></output></aside>


</div>

</body>
</html>
