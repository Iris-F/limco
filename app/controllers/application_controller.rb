class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
# The following code says a user needs to be logged in to do anything
#  before_action :authenticate_user!, except: [:welcome]
end
