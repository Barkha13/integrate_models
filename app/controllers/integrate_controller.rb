class IntegrateController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render "create"
  end

  def create
    User.create(name:params[:name])
    redirect_to "/users"
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @edit_user = User.find(params[:id])
    render "edit"
  end

  def total
    render json: User.count
  end
end
