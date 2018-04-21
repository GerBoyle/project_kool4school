class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

=begin
Below prevents users who are not logged in from the abilty to do these actions
=end

  before_action :authenticate_user!, except: [ :index, :show, :search ]
end

 
