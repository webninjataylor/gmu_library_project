class UsersController < ApplicationController
  skip_before_action :authorize_admin

  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  def index
    @users = User.order(:user_id)
    render :index
  end

  def show
    render :show
  end

  def new
    @user = User.new
  end

  def edit
    render :edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "#{@user.user_id} was added!"
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "#{@user.user_id} was updated!"
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_id, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end