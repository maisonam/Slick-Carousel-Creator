$(document).ready(function () {
  $('span#cog').click(function () {
    $('#sidebar,#main').toggleClass('active');

  });

  $('#contact').click(function () {
    $('.wrapper,.main-panel,#footer-contact').toggleClass('active');
    
  });

  $(".slide-block").on({
	 mousedown: function() {
    $( this ).addClass( "grabbed" );
  }, mouseup: function() {
    $( this ).removeClass( "grabbed" );
  }
});



  $('#showBezier').on('click',function(){

  	if($(this).is(':checked')){
  		$(this).parent().find("input:text").attr("id","cssEase").show();
  		$("#cssEase").attr("id","cssEase-bezier").hide();

  	}else{
  		$("#cssEase-bezier").attr("id","cssEase").show();
  		$(this).parent().find("input:text").removeAttr("id").hide();
  	}

  		

  })



});