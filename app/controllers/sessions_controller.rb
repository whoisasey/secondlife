class SessionsController < ApplicationController
  def new 
    @admin = Admin.new
  end

  def create
    @admin = Admin.find_by(email: params[:session][:email].downcase)

    if @admin && @admin.authenticate(params[:session][:password_digest])
      session[:user_id] = @admin.id
      flash[:notice] = "Logged In Successfully"
      redirect_to root_path
    else
      flash.now[:alert] = "There was something wrong with your login details"
      render 'new'
    end
  end

  def login
  end

  def welcome
  end

  def destroy
    session[:admin_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
  end
end
