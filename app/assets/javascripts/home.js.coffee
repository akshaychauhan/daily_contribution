#= require_tree ../templates/groups
#= require_tree ./views/groups
#= require ./routers/groups_router
#= require ./models/group
#= require ./collections/groups_collection

$(document).ready ->
  window.router = new DC.Routers.GroupsRouter();
  DC.initialize()
  window.location.hash = "index"