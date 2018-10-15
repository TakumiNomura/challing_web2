class HomeController < ApplicationController
  def top
  end

  def create
    @user = User.new(name:params[:name])
    @user.save
    @saving = Saving.new(target: 0, current: 0, system_id: @user.id)
    @saving.save
    redirect_to("/savings/main/#{@user.id}")
  end
end
