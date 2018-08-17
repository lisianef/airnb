class Agent::RappersController < ApplicationController
  before_action :set_rapper, only: [:edit, :update, :destroy]

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

  def edit
    # @rapper = Rapper.find(params[:id])
  end

  def update
    # @rapper = Rapper.find(params[:id])
    @agent = User.find(current_user.id)
    @rapper.update(rapper_params)
    redirect_to agent_rappers_path(@rapper), :notice => "Your changes have been saved"
  end

  def destroy
    # @rapper = Rapper.find(params[:id])
    @rapper.destroy
    redirect_to agent_rappers_path, :notice => "Your rapper has been deleted"
  end

  private

  def set_rapper
    @rapper = Rapper.find(params[:id])
  end

  def rapper_params
    params.require(:rapper).permit(:blaz, :description, :punchline, :style, :origin, :price_per_day, :picture)
  end
end
