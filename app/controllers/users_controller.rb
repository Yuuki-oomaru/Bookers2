class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @user_books = @user.books
  end

  def creat
  end

  def edit
    @user = User.find(params[:id])
      if @user.id != current_user.id
        redirect_to user_path(current_user)
      end
  end

  def update
    @user = User.find(params[:id])
     flash[:notice] = "successfully"
  if @user.update(user_params)
    redirect_to user_path(@user.id)
  else
    render "edit"
  end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
