$(document).ready(function () {
  
  $('span#cog').click(function () {
    $('#sidebar,#main').toggleClass('active');
  });



$('#speed,#autoplaySpeed').on('input',function(){
  var vol = $(this).val();
  $(this).parent().find("span").text(vol);
})

  $(".slide-block").on({
	 mousedown: function() {
    $( this ).addClass( "grabbed" );
  }, mouseup: function() {
    $( this ).removeClass( "grabbed" );
  }
});


$("#input-cubicbezier input[type='text']").on('change',function(){
  var val = $(this).val();
  $(this).val("cubic-bezier("+val+")");

})
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