class ApplicationController < ActionController::Base

before_action:configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
 end
 
 
  #def index
  #@q = Room.ransack(params[:q])
    #@rooms = @q.result(distinct: true)
    #if @q_main
      #@rooms = @q_main.result(distinct: true)
    #end
  #end
  
  #def set_q_for_room
    #@q_main = Room.ransack(params[:q])
  #end
end
