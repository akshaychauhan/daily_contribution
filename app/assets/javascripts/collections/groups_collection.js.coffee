class DC.Collections.GroupsCollection extends Backbone.Collection
  model: DC.Models.Group
  url: '/groups'

  change:->
  	console.log "collection change.............."