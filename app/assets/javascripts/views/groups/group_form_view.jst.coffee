class DC.Views.GroupFromView extends Backbone.View
  template: JST['groups/group_form']
  
  className: "group_form"
  	
  initialize:->

  render: ->
  	$(@el).html(@template(model: @model))
  	@
    