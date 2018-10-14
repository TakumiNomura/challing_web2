class SavingsController < ApplicationController
  def main
    @user = User.find(params[:id])
  end
end
