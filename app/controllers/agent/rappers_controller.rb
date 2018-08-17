class Agent::RappersController < ApplicationController
  def index
    @rappers = current_user.rappers
  end
  
  def new
    @rapper = Rapper.new
  end

  def create
    @rapper = Rapper.new(rapper_params)
    @rapper.agent = User.find(current_user.id)
    if @rapper.save
      redirect_to agent_rappers_path(@rapper)
    else
      render :new
    end
  end

  def destroy
    @rapper = Rapper.find(params[:id])
    @rapper.destroy
    redirect_to agent_rappers_path, :notice => "Your rapper has been deleted"
  end
  
  private

  def rapper_params
    params.require(:rapper).permit(:blaz, :description, :punchline, :style, :origin, :price_per_day, :picture)
  end
end
