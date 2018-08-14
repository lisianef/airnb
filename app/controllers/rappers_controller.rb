class RappersController < ApplicationController
  def index
    @rappers = Rapper.all
    # @const_map = new GMaps({ el: '#map', lat: 48.8648482, lng: 2.3798534, zoom: 14 })
  end


  def show
  end
end
