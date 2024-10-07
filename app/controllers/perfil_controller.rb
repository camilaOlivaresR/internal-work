class PerfilController < ApplicationController
  def index
    @user = User.all
    @user = User.new
  end

  def show
    @user = User.find_by_id(params[:id])
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to perfil_index_path, notice: 'User Create'
      else
        redirect_to perfil_index_path, alert: 'Unable to create user'
      end    
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
