class UsersController < Clearance::UsersController
  def new
  	render :new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		sign_in(@user)
  		redirect_to root_path
  	else
  		redirect_to sign_up_path
  	end
  end

  private
  def user_params
      params.require(:user).permit(:email, :full_name, :password)
  end
end
