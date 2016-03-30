class DC.Views.IndexView extends Backbone.View
  template: JST["groups/index"]

  initialize:->
  	@collection.on("add",@render,@)
  	@collection.on("remove",@render,@)

  events:
  	'click .edit_action': 'editGroup'

  newGroup: ->
    group = new DC.Models.Group()
    console.log "akshy......."
    group_form_view = new DC.Views.GroupFromView(model: group)
    $(".model_m").html(group_form_view.render().el)
    $("#myModal").modal()

  editGroup: ->
  	

  render:->
  	$(@el).html(@template(collection: @collection))
  	@
