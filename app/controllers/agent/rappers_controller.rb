class Agent::RappersController < ApplicationController
  def index
    @rappers = current_user.rappers
  end

  def destroy
    @rapper = Rapper.find(params[:id])
    @rapper.destroy
    redirect_to agent_rappers_path
  end
end
