class Agent::RappersController < ApplicationController
 def index
   @rappers = current_user.rappers
 end
end
