class SessionsController < Devise::SessionsController
  def create
  	@user = User.find_by_email(params[:user][:email])
  	if @user != nil
      sign_in @user
      redirect_to :root
  	end
  end
end