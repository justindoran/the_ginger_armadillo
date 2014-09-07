class ApplicationController < ActionController::Base
  #NOTE: Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  
end
