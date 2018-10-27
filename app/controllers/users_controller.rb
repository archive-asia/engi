class UsersController < ApplicationController

  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    # user.company = Company.find(1)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path
    else
      redirect_to :back, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  def me
    # 本人のページ
  end

  private

  def user_params
    params.require(:user).permit(:login_name, :password, :password_confirmation)
  end
end
