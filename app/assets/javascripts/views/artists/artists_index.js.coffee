class MyMusicLive.Views.ArtistsIndex extends Backbone.View

  template: JST['artists/index']

  initialize: ->
    @collection.on('reset', @render, @)

  render: -> 
    $(@el).html(@template(
        artists: @collection
      ))
    @
