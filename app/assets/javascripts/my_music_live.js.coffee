window.MyMusicLive =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new MyMusicLive.Routers.Artists
    Backbone.history.start()


$(document).ready ->
  MyMusicLive.initialize()
