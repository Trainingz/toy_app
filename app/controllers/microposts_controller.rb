class MicropostsController < ApplicationController
  def index
    @mc = Micropost.all
    @users = User.all
  end

  def new 
    @mc = Micropost.new

  end

  def create 
    @mc = Micropost.new(mc_params)

    if @mc.save 
      redirect_to microposts_path
    else
      render "new"
    end
  end

  def edit
    @mc = Micropost.find(params[:id])
  end

  def update
    @mc = Micropost.find(params[:id])

    if attributes_updated
      redirect_to microposts_path
    else
      render "edit"
    end
  end

  def mc_params 
    params.require(:micropost).permit!
  end
end