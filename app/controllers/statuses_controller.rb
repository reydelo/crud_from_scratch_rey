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
      redirect_to statuses_path, notice: 'Status has been posted!'
    else
      render :new
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      redirect_to statuses_path, notice: 'Status was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @status = Status.find(params[:id])
    if @status.destroy
      redirect_to statuses_path, notice: 'Status was successfully deleted'
    end
  end

  def thumbs_up
    @status = Status.find(params[:id])
    @status.likes.create
    redirect_to(statuses_path)
  end

  private
  def status_params
    params.require(:status).permit(:status, :user, :likes)
  end

end
