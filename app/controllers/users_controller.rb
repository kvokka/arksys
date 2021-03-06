class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :for_all, :destroy, :edit, :update]
  before_action :setup_user, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    respond_with @users = User.all
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  private

    def setup_user
      @user = User.find params[:id]
    end

    def user_params
      params.require(:user).permit(:name, :email, :family, :status, :phone)
    end
end
