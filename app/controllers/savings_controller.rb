class SavingsController < ApplicationController
  def main
    @user = User.find(params[:id])
  end

  #def add
  #  @saving = Saving.find(params[:system_id])
end
