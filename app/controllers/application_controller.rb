class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :get_logged_in_user
  
  def get_logged_in_user 
  	if session[:person_id]
  		@auth_user = Person.find(session[:person_id])
  	else 
  		@auth_user = nil
  	end
  end
  		
end
