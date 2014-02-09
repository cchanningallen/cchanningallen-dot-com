class MyMusicLive.Routers.Artists extends Backbone.Router
  routes:
    '': 'home'
    'artists': 'index'
    'artists/:name': 'show'
    'artists/search': 'search'
    'artists/find': 'find'

  initialize: ->
    @collection = new MyMusicLive.Collections.Artists()
    @collection.fetch() 

  home: ->
    $("#myMusicLive-action-container").html('')

  index: ->
    view = new MyMusicLive.Views.ArtistsIndex(collection: @collection)
    $("#myMusicLive-action-container").html(view.render().el)

  search: ->
    view = new MyMusicLive.Views.ArtistSearch()
    $("#myMusicLive-action-container").html(view.render().el)      

  show: (artistName) ->
    console.log "searching for #{artistName}..."

