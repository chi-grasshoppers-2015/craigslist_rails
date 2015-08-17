module UsersHelper
  def current_user
     @user ||= User.find(session[:id])
   end

   def current_user_id
     session[:id]
   end

   def logged_in?
     session[:id] != nil
   end
end
