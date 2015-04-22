class PagesController < ApplicationController
  def index
    @users = User.limit(5)
    @microposts = Micropost.limit(5)
  end
end