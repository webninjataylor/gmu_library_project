class UsersController < ApplicationController

  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  def index
    @users = User.order(:email).page(params[:page])
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

  def login
    render :login
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      redirect_to @user, :notice => "#{user.user_id} is logged on"
    else
      render "new"
    end
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
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :user_id, :password_digest)
  end

  def set_user
    @user = User.find(params[:id])
  end

end

end