class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to status_path
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def status_params
    params.require(:status).permit(:status, :user, :likes)
  end

end
