class SavingsController < ApplicationController

    def main
        # @savings = Saving.first
        @user_id = params[:id]
        @user = User.find(params[:id])
        @savings = Saving.find_by(system_id: params[:id])
        @savings_current = @savings.current
        @savings_target = @savings.target
    end
    
    def new
        @user = User.new
        @savings = Saving.new
    end
    

    def create
        @savings = Saving.find_by(system_id: params[:id])
        @savingsAdd = (@savings.current + params[:saving][:current].to_i)
        
        # 成功した時
        # if @savings.save
        if @savings.update(current: @savingsAdd)
            redirect_to "/savings/main/#{params[:id]}", notice: "保存しました"
        
        # 失敗
        else
            render :new, notice: "保存できませんでした"
        end
        
    end
    
    
    def update
        
        @savings = Saving.find_by(system_id: params[:id])
        @savingsNew = params[:saving][:target].to_i
        @user_id = params[:id]
        # 成功した時
        # if @savings.save
        if @savings.update(target: @savingsNew)
            redirect_to "/savings/main/#{@user_id}", notice: "保存しました"
        
        # 失敗
        else
            render :new, notice: "保存できませんでした"
        end
    end
    
    private
    
    def savings_params
        params.require(:saving).permit(:current, :system_id)
    end
end
