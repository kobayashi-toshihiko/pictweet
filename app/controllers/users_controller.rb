class UsersController < ApplicationController
  def show
    # binding.pry
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets   = user.tweets.order("created_at DESC").page(params[:page]).per(5)
  end
end
