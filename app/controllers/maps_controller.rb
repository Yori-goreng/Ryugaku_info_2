class MapsController < ApplicationController
  def index
  end

  def show
  end

  def map
  # respond_to以下の記述によってremote: trueのアクセスに対して、map.js.erbが使えるように
    respond_to do |format|
    format.js
    end
  end
  
end
