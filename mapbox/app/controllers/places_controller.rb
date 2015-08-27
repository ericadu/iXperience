class PlacesController < ApplicationController
  def index
    @places = Place.all
    @geojson = Array.new

    @places.each do |place|
      @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [place.longitude, place.latitude]
        },
        properties: {
          name: place.name,
          address: place.address,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium'
        }
      }
    end
    respond_to do |format|
      format.html
      format.json { render json: @geojson }  # respond with the created JSON object
    end
  end
end
