class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Thanks for signing up for the tournament!" 
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed." 
    redirect_to users_url
  end

  def edit
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, 
                                   :email, 
                                   :address_street, 
                                   :address_city_state, 
                                   :address_zip, 
                                   :phone,
                                   :club, 
                                   :fees, 
                                   :signature,
                                   :md, 
                                   :wd, 
                                   :xd,
                                   :md_partner, 
                                   :wd_partner, 
                                   :xd_partner)
    end
end
