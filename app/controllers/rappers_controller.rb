class RappersController < ApplicationController
  def show
    @rapper = Rapper.find(params[:id])
  end

end
