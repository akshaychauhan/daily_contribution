var DC = {
  
}

Events = {
  primary: function(){
    
    $('form#new_group').bind('ajax:error', function(event, request, settings) {
      console.log("error")
      
  	});

  	$('form#new_group').bind('ajax:success', function(evt, data, status, xhr){
        console.log("sussecc")
        $("#myModal .form_content").hide().find("input[type=text], textarea").val("")
        $("#myModal .success_msg").show();
        $("#myModal input[type='submit']").hide()
        $("#myModal .overlay").hide();
        $("#new_group").attr("action", "/groups")
        $("#new_group").attr("method", "post")
  	});

  	$('form#new_group').bind('ajax:before', function(evt, data, status, xhr){
        $("#myModal .overlay").show();
  	});

  	$('#myModal').on('hidden.bs.modal', function () {
      $("#myModal .form_content").find("input[type=text], textarea").val("");
  	  $("#myModal .form_content").show()
      $("#myModal .success_msg").hide();
      $("#myModal input[type='submit']").show();
  	});
    
    $('#myModal').on('shown.bs.modal', function (event) {
      if($(event.relatedTarget).hasClass("edit_action")){
        $("#new_group").addClass("edit")
        tr = $(event.relatedTarget).closest("tr")
        $("#new_group").attr('data-id', tr.attr('value'))
        $("#myModal .form_content").find("input[name='group[name]']").val(tr.find("td:eq(0)").text())
        $("#myModal .form_content").find("textarea[name='group[description]']").val(tr.find("td:eq(1)").text())
      }
    });
    
    $("#new_group").submit(function (event){
      if($("#new_group").hasClass("edit")){
        console.log("callllllll")
        this.action = this.action+"/"+$("#new_group").attr('data-id')
        this.method = "put"
        $("#new_group").removeClass("edit")
        $("#new_group").attr('data-id', '')
      }
      return true
    });
  }
}

jQuery(function($){
  Events.primary()
});