class ArtistsController < ApplicationController
  respond_to :json

  expose(:artists)
  expose(:artist)

  def index
    respond_with artists.to_json
  end

  def show
    respond_with artist.to_json
  end

  def new
    respond_with artist.to_json
  end

  def artist_search
  end

  def recommended_events
    respond_with json: BitApi.recommended_events(artist_params[:name])
  end

  private
  def artist_params
    params.require(:artist).permit(:name)
  end
end
