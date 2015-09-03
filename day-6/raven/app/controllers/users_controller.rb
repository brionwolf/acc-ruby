class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @croaks = current_user.croaks.build if signed_in?
    @feed_items = @user.croaks.pageinate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = 'Welcome to Raven'
      redirect_to @user
    else
      render new
    end
  end

  def update
    if @user.update[user_params]
      flash[:success] = 'Your profile has been updated'
      redirection_to @user
    else
      render new
    end
  end

  def destroy
    @user.destroy
    redirect_to root_url
  end

  def following
    @title = "following"
    @user = @user.followed_users.paginate(page: params[:page])
    render :show_follow
  end

  def followers
    @title = "followers"
    @users = @user.followers.paginate(page: params[:page])
    render :show_follow
  end

  private
    def set_user
      @user = User.find_by!(slug: params[:id])
    end

    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation,:slug)
    end

    def correct_user
      redirect_to(signin_url) unless current_user?(@user)
    end
end
