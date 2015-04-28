$(function(){
	
	var textareaHtml = $('#box .html'),textareaCss = $('#box .css'),textareaJs = $('#box .js'),firstload = true;
	
	var getVariableSource = {
				getHtml:function(){
					
					var $html = $('#democontainer').html();
					textareaHtml.html($html);
					getVariableSource.getCss($html)
					
				},
				getCss:function($html){
					var $css = $('head style').html();
					textareaCss.html($css);
					getVariableSource.getJs($html,$css)
				},
				getJs:function($html,$css){
					//console.log($html,$css);
					var $oName="", $js="";
					for (var $o in $availablevariables){
						$oName = $oName + ''+$o+': '+$availablevariables[$o]+',\n';
					}
					var $defaults = 'var defaults = {\n'+
					''+$oName+''+
					"};";
					
					var $js = $pluginTemplate.replace("##default-variables##",""+$defaults+"");
					//$js = $js + $('script#callplugin').html().replace("$.getScript(\"script/livequery_init.js\")","");

	
					$('.jayess .js').html($js);

					preload($html,$css,$js);
				}
	};
	$('#switch').on('click',function(){
		
		if ($(this).is(':checked') && firstload === true){
			$('#box').show();
			if($pluginTemplate.length>0){	
				getVariableSource.getHtml();
			}
			firstload = false;
				
		}else if ($(this).is(':checked') && firstload === false){
			$('#box').show();
			//$('.jayess .submit').trigger('click');
			
		}else{
			$('#box').hide();
			//textareaHtml.empty();
		}
	
	});
	
/*	//Update plugin options
	var updateOptions = function(){
		
		
	}
	updateOptions();*/
	

		function getHtml(){
			var html = $('.html').val();
			return html;
		}
		function getCss(){
			var Css = $('.css').val();
			return Css;
		}
		function getJs(){
			var Js = $('.js').val();
			return Js;
		}

	
	//var $h=getHtml(),$c=getCss(),$j=getJs();
	
	
	$('.html, .css').on('keyup',function(){
		var target = $('#previewtaget')[0].contentWindow.document;
		var $h = getHtml();
		var $c = getCss();
		var $j = getJs();
		
		target.open();
		target.close();


		$('body',target).append($h);
		$('head',target).append('<style>'+ $c +'</style>');
		$('body',target).attr('id','test');
		$('.jayess .submit').trigger('click',[""+$h+"",""+$c+"",""+$j+""]);
		
		textareaHtml.html($h);
		textareaCss.html($c);
	});
	
	$('.jayess .submit').on('click',function(e,$h,$c,$j){
		
		if ($h===undefined && $c===undefined && $j===undefined){var $h=getHtml(),$c=getCss(),$j=getJs();}
		
		
		
		//var $h=getHtml(),$c=getCss(),$j=getVariableSource.getJs();

		 var iframe = document.getElementById("previewtaget");
var val = '<scr' + 'ipt type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></scr' + 'ipt>';
 	val += '<scr' + 'ipt type="text/javascript"> '+$j+' </scr' + 'ipt>';

      //val += '<scr' + 'ipt type="text/javascript"> $(function() { $("body").append("<h1>It works!</h1>"); }); </scr' + 'ipt>';

		//var target = $('#previewtaget')[0].contentWindow.document;
		var doc = iframe.contentWindow || iframe.contentDocument;
		  if (doc.document) {
			doc = doc.document;
		  }
	  	/*var script = document.createElement('script');
		script.type = 'text/javascript';
		script.text = ''+ JS +'';*/

		doc.open();
		doc.write('<style>'+ $c +'</style>'+$h+val);
		doc.close();
		//$('.html').trigger('keyup');
		//$('.css').trigger('keyup');
		/*var html = GetHtml();
		var Css = GetCss();
		
		$('body',target).append(html);
		$('head',target).append('<style>'+ Css +'</style>');
		
		//$('body',target).append(script);
		$('#previewtaget').contents().find("body").append(script);
		
		console.log(script);*/

		return false;
	})
	
	
	
	
	$('#source').click(function(){
	//var source = $('#previewtaget').contents().find('html').html();
		console.log(getVariableSource.GetJs())
	});
	
	///Pre-load fields
	function preload($html,$css,$js){
		
		//$('#previewtaget').contents().find('html body').html(''+$html+'');
		
		//var preCss = $c();

		//$('#previewtaget').contents().find('html head').html('<style>'+ $css +'</style>');

		$('.jayess .submit').trigger('click',[""+$html+"",""+$css+"",""+$js+""]);
	}
	//PRE LOAD IF FIELDS AREN'T EMPTY
	//if($h.length>0 && $c.length>0){ preload(); }
	
	
	
});