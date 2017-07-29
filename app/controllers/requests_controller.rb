class RequestsController < ApplicationController

  # The following show action will be used to render a static page with a template page that is the same name as a parameter that is passed in.
  http_basic_authenticate_with name: "friend", password: "topsecret"
  # Add an exception with "", except: [:welcome]""

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

# Doesn't seem to work they way I want it to
#  def approve
#    @request = Request.find(params[:id])
#  end

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
      params.require(:request).permit(:name, :email, :startdate, :enddate, :noofguests, :children, :childreninfo, :approval_status, :status, :comment)
    end

end
