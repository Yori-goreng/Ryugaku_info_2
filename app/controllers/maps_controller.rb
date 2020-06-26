class MapsController < ApplicationController
  def index
  end

  def show
  end

  def map
  #map.js.erbで、経度緯度情報が入った@latlngを使えるように
  results = Geocoder.search(params[:address])
  @latlng = results.first.coordinates

  # respond_to以下の記述によってremote: trueのアクセスに対して、map.js.erbが使えるように
  respond_to do |format|
    format.js
  end
  end
end
