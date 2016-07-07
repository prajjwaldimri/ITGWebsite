class UsersController < ApplicationController

  before_action :logged_in_user, only: [:show, :edit, :update, :destroy, :new]
  before_action :correct_user, only: [:show, :edit, :update]
  before_action :admin_user, only: [:index, :destroy, :new]
  layout 'student_section'

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def show
    @user = User.friendly.find(params[:id])
    @assignments = @user.assignments.paginate(page: params[:page])
    @assignment = current_user.assignments.build if logged_in?
    @article = current_user.articles.build if logged_in?
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User Created!"
      render 'new'
      #log_in @user
      #redirect_to @user
    else
      flash[:alert] = "User not created"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile Updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.friendly.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :rollno, :email, :user_type, :branch, :password, :password_confirmation)
  end

  #Before Filters


#Confirms if user is correct
  def correct_user
    @user = User.friendly.find(params[:id])
    redirect_to(root_url) unless current_user?(@user) || current_user.admin?
  end

  #Confirms admin_user
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  def faculty_user
    redirect_to(root_url) unless current_user.user_type == 'Faculty'
  end

end
