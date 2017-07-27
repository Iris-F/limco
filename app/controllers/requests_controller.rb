class RequestsController < ApplicationController

  def index
  end

  def create
    @request = Request.new(request_params)

    @request.save
    redirect_to @request
  end

  def new
  end

  def edit
  end

  def show
    @request = Request.find(params[:id])
  end

  def update
  end

  private
    def request_params
      params.require(:request).permit(:name, :email, :startdate, :enddate, :noofguests, :children, :childreninfo, :status, :comment)
    end

end
