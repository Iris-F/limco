class RequestsController < ApplicationController

  def index
  end

  def create
    @request = Request.new(params.require[:request].permit(:name, :email, :startdate, :enddate, :noofguests, :children, :childreninfo, :status))
#    @request = Request.new(params.require(:request).permit(:name, :email, :startdate, :enddate, :noofguests, :children, :childreninfo, :status))
    @request.save
    redirect_to @request
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

end
