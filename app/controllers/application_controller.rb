class ApplicationController < ActionController::Base

=begin
  protect_from_forgery with: :exception

The above line was removed and the below line addded to prevent 
GET HTTP requests as they are not secured with it.

INCORRECT with:  :exception added back in 

=end

protect_from_forgery with: :exception
 

=begin
Below prevents users who are not logged in from the abilty to do these actions
=end

  before_action :authenticate_user!, except: [ :index, :show, :search ]
end

 
