var DC = {
  
}

Events = {
  primary: function(){
    
    $('form#new_group').bind('ajax:error', function(event, request, settings) {
      console.log("error")
      
	});

	$('form#new_group').bind('ajax:success', function(evt, data, status, xhr){
      console.log("sussecc")
      $("#myModal .form_content").hide().find("input[type=text], textarea").val("");
      $("#myModal .success_msg").show();
      $("#myModal input[type='submit']").hide();
      $("#myModal .overlay").hide();
	});

	$('form#new_group').bind('ajax:before', function(evt, data, status, xhr){
      $("#myModal .overlay").show();
	});

	$('#myModal').on('hidden.bs.modal', function () {
	  $("#myModal .form_content").show()
      $("#myModal .success_msg").hide();
      $("#myModal input[type='submit']").show();
	});
  }
}

jQuery(function($){
  Events.primary()
});