class DC.Routers.GroupsRouter extends Backbone.Router
  
  initialize: (options)->
    @collection = new DC.Collections.GroupsCollection()
    @collection.reset(gon.groups)

  routes:
    "" : "index"
    "new": "newGroup"
    '*notFound': 'notFound'   

  newGroup:->
    console.log "------------------------------"
    group = new DC.Models.Group()
    group_form_view = new DC.Views.GroupFromView(model: group)
    $(".model_m").html(group_form_view.render().el)
    $("#myModal").modal()
    $("#myModal").on "hidden.bs.modal", ->
      router.navigate('index', {trigger: false})

  index: ->
    @renderIndex()
  
  
  renderIndex: ->
    console.log "............calling................"
    console.log @collection
    indexView = new DC.Views.IndexView(collection: @collection)
    $(".mwrapper").html(indexView.render().el)

  notFound: ->
    console.log("notFound............")


