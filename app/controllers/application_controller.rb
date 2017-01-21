class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!

 	before_filter :admin_only, :except => [:show, :index, :sign_out]

 	skip_before_filter :admin_only, if: :devise_controller?

 	private

	  def admin_only
  	  unless current_user.admin? || current_user.captain? 
    	  redirect_to :back, :alert => "Access denied."
    	end
 		end

end
