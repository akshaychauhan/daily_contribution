window.DC =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	Backbone.history.stop()
  	Backbone.history.start() #unless Backbone.History.started

$(document).ready ->
  
