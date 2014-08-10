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
				openall: true
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
				  
				
				  console.log($('script#plugin').html());
				  alert("");
				  
				  clearTimeout($setdelay);
				  $setdelay = setTimeout(function() {
					currentitem.next("span").text(getvalue);
					$availablevariables[getoption] = stringToBoolean(getvalue);
					callplugin.change();
				  }, 600);
			});
			
			
			
			$.getScript("script/livequery_init.js")
			
		});