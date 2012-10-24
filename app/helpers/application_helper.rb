module ApplicationHelper

  def show_login(person)
   if person 
   	link_to person.email, person_path(person)
   else
   	link_to "Login", login_path
   end  	
  end


end
