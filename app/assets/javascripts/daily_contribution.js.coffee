window.DC =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (arg)->
  	Backbone.history.stop()
  	Backbone.history.start(arg) #unless Backbone.History.started

$(document).ready ->
  
