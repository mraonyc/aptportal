class SessionController < ApplicationController 
	def new 
	end 
	
	def login 	
	  user = Person.find_by_email(params[:email])
	  
	  if user && user.authenticate(params[:password])
	  	session[:person_id] = user.id
	  	redirect_to apartments_path
      else
      	redirect_to login_path
      end 
	end 
	
	def destroy 
	  session[:person_id] = nil
      redirect_to apartments_path
	end 

end