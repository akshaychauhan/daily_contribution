#= require_tree ../templates/groups
#= require_tree ./views/groups
#= require ./routers/groups_router
#= require ./models/group
#= require ./collections/groups_collection

$(document).ready ->
  window.router = new DC.Routers.GroupsRouter()
  DC.initialize({pushState: true, root: '/'})
  # Backbone.history.start({pushState: true, root: '/'});
  # window.location.hash = "index"
  $(document).on "click", "a[href]:not([data-bypass])", (evt)->
	  href = { prop: $(@).prop("href"), attr: $(@).attr("href") }
	  root = location.protocol + "//" + location.host
	  if href.prop.slice(0, root.length) == root
	    evt.preventDefault()
	    window.router.navigate(href.attr, true)