class BitApi
  include HTTParty

  API_KEY = "123channing"

  def self.recommended_events(artist_name)
    artist = URI::encode(artist_name)

    res = get( "http://api.bandsintown.com/artists/#{artist}/events/recommended.json", 
      body: {
        app_id: "123chantest", 
        location: "san francisco, california", 
        api_version: 2.0
      })

    JSON.parse(res.body)

  rescue => e
    false
  end
end