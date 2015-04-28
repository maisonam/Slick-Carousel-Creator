$(function(){
	
	var textareaHtml = $('#box .html'),textareaCss = $('#box .css'),textareaJs = $('#box .js'),firstload = true,mirrorCode = "";
	
	//Set JS text area with default Tempalte
	var setJs = function(){


		var $oName="", $js="";
			for (var $o in $availablevariables){
				$oName = $oName + ''+$o+': '+$availablevariables[$o]+',\n';
			}
			var $defaults = '_.defaults = {\n'+
			''+$oName+'';
					
			var $js = $pluginTemplate.replace("##default-variables##",""+$defaults+"");
		
			return $js;
		//textareaJs.html($js);		
		};
	setJs();
	
	
	// Code mirror default template
	var htmlEditor = CodeMirror.fromTextArea(document.getElementById("html"), {
				        lineNumbers: true,
						mode: "application/x-ejs",
						indentUnit: 4,
						indentWithTabs: true,
						enterMode: "keep",
						tabMode: "shift"
					  });

	var cssEditor = CodeMirror.fromTextArea(document.getElementById("css"), {
						lineNumbers: true,
						matchBrackets: true,
						mode: "text/css"
					});

	var jsEditor = CodeMirror.fromTextArea(document.getElementById("js"), {
						lineNumbers: true,
						matchBrackets: true,
						mode: "text/typescript"
					});
					
					
	
	var getVariableSource = {
		getHtml:function(){
			
			var $html = $('#democontainer').html();
			textareaHtml.html($html);
			htmlEditor.setValue($html);

			getVariableSource.getCss($html)
			
		},
		getCss:function($html){
			var $css = $('head style:first').html();
			textareaCss.html($css);
			cssEditor.setValue($css);
			
			getVariableSource.getJs($html,$css)
		},
		getJs:function($html,$css){
			var $oName="", $js="";
			for (var $o in $availablevariables){
				$oName = $oName + ''+$o+': '+$availablevariables[$o]+',\n';
			}
			var $defaults = 'var defaults = {\n'+
			''+$oName+''+
			"};";
			
			var $js = $pluginTemplate.replace("##default-variables##",""+$defaults+"");

			$('.jayess .js').html($js);
			jsEditor.setValue($js);
			preload($html,$css,$js);
		}
	};
	
	
	
	$('#switch').on('click',function(){
		
		if ($(this).is(':checked') && firstload === true){
			$('#democontainer').hide();
			$('#box').show();
						
			if($pluginTemplate.length>0){	
				getVariableSource.getHtml();
			}
			firstload = false;
				
		}else if ($(this).is(':checked') && firstload === false){
			$('#democontainer').hide();
			$('#box').show();
			
			//$('.jayess .submit').trigger('click');
			
		}else{
			$('#box').hide();
			$('#democontainer').show();
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
	htmlEditor.on('change',function(){
		var target = $('#previewtaget')[0].contentWindow.document;
		
		
		// cssEditor.setValue(setCss);
		var $h = htmlEditor.getValue();
		var $c = cssEditor.getValue();
		var $js = jsEditor.getValue();

		var iframe = document.getElementById("previewtaget");
		var jsTags = '<scr' + 'ipt type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></scr' + 'ipt>';
 		jsTags += '<scr' + 'ipt type="text/javascript"> '+$js+' </scr' + 'ipt>';
 
		// htmlEditor.setValue(setHtml);

		var doc = iframe.contentWindow || iframe.contentDocument;
		  if (doc.document) {
			doc = doc.document;
		  }


		doc.open();
		doc.write('<style>'+ $c +'</style><div id=\"body\">'+$h+'</div>'+jsTags);
		doc.close();


		// target.open();
		// target.close();


		// $('body',target).append(setHtml);
		// $('head',target).append('<style>'+ setCss +'</style>'+val);
		// $('body',target).attr('id','test');
		
	})

	cssEditor.on('change',function(){
		var target = $('#previewtaget')[0].contentWindow.document;
		
		
		// cssEditor.setValue(setCss);
		var $h = htmlEditor.getValue();
		var $c = cssEditor.getValue();
		var $js = jsEditor.getValue();

		var iframe = document.getElementById("previewtaget");
		var jsTags = '<scr' + 'ipt type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></scr' + 'ipt>';
 		jsTags += '<scr' + 'ipt type="text/javascript"> '+$js+' </scr' + 'ipt>';
 
		// htmlEditor.setValue(setHtml);

		var doc = iframe.contentWindow || iframe.contentDocument;
		  if (doc.document) {
			doc = doc.document;
		  }


		doc.open();
		doc.write('<style>'+ $c +'</style><div id=\"body\">'+$h+'</div>'+jsTags);
		doc.close();


		// target.open();
		// target.close();


		// $('body',target).append(setHtml);
		// $('head',target).append('<style>'+ setCss +'</style>'+val);
		// $('body',target).attr('id','test');
		
	})
	
	$('#codemirror-html .c, .css').on('keyup',function(){
		var target = $('#previewtaget')[0].contentWindow.document;
		
		var setCss = cssEditor.getValue();
		cssEditor.setValue(setCss);
		var setHtml = htmlEditor.getValue();
		htmlEditor.setValue(setHtml);
		
		var $h = getHtml();
		var $c = getCss();
		
		
		target.open();
		target.close();


		$('body',target).append(setHtml);
		$('head',target).append('<style>'+ setCss +'</style>');
		$('body',target).attr('id','test');
		$('.jayess .submit').trigger('click',[""+$h+"",""+$c+"",""+$j+""]);
		
		//textareaHtml.html($h);
		//textareaCss.html($c);
	});
	
	$('.jayess .submit').on('click',function(e,$h,$c){
		//var retrievedObject = localStorage.getItem('editor');
		//$('.CodeMirror').remove();
		//textareaJs.val(retrievedObject);
		
		//if ($h===undefined && $c===undefined){var $h=getHtml(),$c=getCss();}
		//if ($h===undefined && $c===undefined && $j===undefined){var $h=getHtml(),$c=getCss(),$j=getJs();}
		var $h = htmlEditor.getValue();
		var $c = cssEditor.getValue();
		var $js = jsEditor.getValue();

		// jsEditor.setValue(updatedEditor);
		

		
		//localStorage.setItem('editor', editor.getValue());
		
		
		//var $h=getHtml(),$c=getCss(),$j=getVariableSource.getJs();

		var iframe = document.getElementById("previewtaget");
		var val = '<scr' + 'ipt type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></scr' + 'ipt>';
 		val += '<scr' + 'ipt type="text/javascript"> '+$js+' </scr' + 'ipt>';

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
		doc.write('<style>'+ $c +'</style><div id=\"body\">'+$h+'</div>'+val);
		doc.close();
		
		$h = $('#previewtaget').contents().find('html body #body').html();
		textareaHtml.html($h);
		//

		//$('.html').trigger('keyup');
		//$('.css').trigger('keyup');
		/*var html = GetHtml();
		var Css = GetCss();
		
		$('body',target).append(html);
		$('head',target).append('<style>'+ Css +'</style>');
		
		//$('body',target).append(script);
		$('#previewtaget').contents().find("body").append(script);
		
		console.log(script);*/
		
		
		
		// Retrieve the object from storage
		
		
		//console.log('retrievedObject: ', retrievedObject);
		
		
		//

		return false;
		
	});
	
	
	//DEPRECATED DOWNLOAD FUNCTON
	// function download(filename, text) {
	//     var pom = document.createElement('a');
	//     pom.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
	//     pom.setAttribute('download', filename);
	//     pom.click();
	// }



	



var container = document.querySelector('.grab-demosource');
var output = container.querySelector('output');

const MIME_TYPE = 'text/html';

// Rockstars use event delegation!
// document.body.addEventListener('dragstart', function(e) {
//   var a = e.target;
//   if (a.classList.contains('dragout')) {
//     e.dataTransfer.setData('DownloadURL', a.dataset.downloadurl);
//   }
// }, false);

// document.body.addEventListener('dragend', function(e) {
//   var a = e.target;
//   if (a.classList.contains('dragout')) {
//     cleanUp(a);
//   }
// }, false);

// document.addEventListener('keydown', function(e) {
//   if (e.keyCode == 27) {  // Esc
//     document.querySelector('details').open = false;
//   } else if (e.shiftKey && e.keyCode == 191) { // shift + ?
//     document.querySelector('details').open = true;
//   }
// }, false);

var cleanUp = function(a) {
  a.textContent = 'Downloaded';
  a.dataset.disabled = true;

  // Need a small delay for the revokeObjectURL to work properly.
  setTimeout(function() {
    window.URL.revokeObjectURL(a.href);
  }, 1500);
};

var downloadFile = function(source) {

  window.URL = window.webkitURL || window.URL;

  var prevLink = output.querySelector('a');
  if (prevLink) {
    window.URL.revokeObjectURL(prevLink.href);
    output.innerHTML = '';
  }

 
  var bb = new Blob([source], {type: MIME_TYPE});

  var a = document.createElement('a');
  a.download = "demo-plugin";
  a.href = window.URL.createObjectURL(bb);
  a.textContent = 'Download ready';

  a.dataset.downloadurl = [MIME_TYPE, a.download, a.href].join(':');
  a.draggable = true; // Don't really need, but good practice.
  a.classList.add('dragout');

  output.appendChild(a);
  
  $("output a").trigger("click");

	  a.onclick = function(e) {
	    if ('disabled' in this.dataset) {
	      return false;
	    }

	    cleanUp(this);
	  };
	};

	//Grab source editor code
	$('#source').click(function(){
		var $h = htmlEditor.getValue();
		var $c = cssEditor.getValue();
		var $js = jsEditor.getValue();

		var source = "<!DOCTYPE html>\n"
						+"<head>\n"
							+"<style type=\"text/css\">\n"
								+""+$c+"\n"
							+"</style>\n"
						+"</head>\n"
						+"<body>\n"
							+""+$h+"\n"
							+"<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script>\n"
							+"<script type=\"text/javascript\">\n"
								+""+$js+"\n"
							+"</script>\n"
						+"</body>\n"
					+"</html>\n";

		downloadFile(source);
	});

	
	//Grab demo code
	$('#demosource').click(function(){

		var $h = "<div class=\"slider responsive\"><div><h3>1</h3></div><div><h3>2</h3></div><div><h3>3</h3></div><div><h3>4</h3></div><div><h3>5</h3></div><div><h3>6</h3></div><div><h3>7</h3></div><div><h3>8</h3></div></div>";
		var $c = $('head style:first').html();
		if($pluginTemplate.length>0){	
			getVariableSource.getHtml();
		}
		var $js = setJs();
		console.log($js);
		var source = "<!DOCTYPE html>\n"
						+"<head>\n"
							+"<style type=\"text/css\">\n"
								+""+$c+"\n"
							+"</style>\n"
						+"</head>\n"
						+"<body>\n"
							+"<div style=\"width:90%;margin-left:50px;\"> "+$h+"</div>\n"
							+"<script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-1.11.0.min.js\"></script>\n"
							+"<script type=\"text/javascript\">\n"
								+""+$js+"\n"
							+"</script>\n"
						+"</body>\n"
					+"</html>\n";
		downloadFile(source);
		// download('plugin-sorce.html', ''+source+'');
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