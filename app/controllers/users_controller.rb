class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)   
    @uni = UniversityPull.new()
    @uni = UniversityPull.where(["key = ?", @user.workplace]).first

    if @user.role == "coordinator" && @uni != nil
      if @user.save 
      	log_in @user
        @check = University.new()
        @check = University.where(["key = ?", @user.workplace]).first
        if @check == nil
          redirect_to new_university_path
        else
          redirect_to @check
        end
      else
        flash[:error] = "Пожалуйста введите существующий код университета в поле 'место работы'"
        render 'new'
      end
    elsif @user.role == "expert"
      if @user.save 
        log_in @user
        redirect_to disciplines_url
      else
        render 'new'
      end
    else 
      render 'new'
    end
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :role,:workplace, :password, :password_confirmation)
  end

  


end
