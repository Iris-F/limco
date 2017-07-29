class PagesController < ApplicationController
  # Added following code as instructed by Treehouse Tutorial
  def show
    render template: "pages/#{params[:page]}"
  end
end
