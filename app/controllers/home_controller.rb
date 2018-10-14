class HomeController < ApplicationController
  def top
  end

  def create
    @user = User.new(name:params[:name])
    @user.save
    redirect_to("/savings/main/#{@user.id}")
  end
end