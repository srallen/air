class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by email: params[:email]

    if @user.present && @user.authenticate(params(:password))
      session[:user_id] = @user.id
      flash[:notice] = 'Signed in successfully'
      redirect_to root_url
    else
      # TODO add error handling
      render 'new'
    end
  end

  def destroy
    reset_session
    flash[:notice] = 'Signed out successfully'
    redirect_to root_url
  end

end
