class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end



  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to @request
    else
      render 'new'
    end
  end

  def new
    @request = Request.new
  end

  def edit
    @request = Request.find(params[:id])
  end

  def show
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])

    if @request.update(request_params)
      redirect_to @request
    else
      render 'edit'
    end
  end

  private
    def request_params
      params.require(:request).permit(:name, :email, :startdate, :enddate, :noofguests, :children, :childreninfo, :status, :comment)
    end

end
