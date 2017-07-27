class PagesController < ApplicationController
  # Added following code as instructed by Treehouse Tutorial
  # The following show action will be used to render a static page with a template page that is the same name as a parameter that is passed in.
  http_basic_authenticate_with name: "friend", password: "topsecret", except: [:welcome]

  def show
    render template: "pages/#{params[:page]}"
  end
end
