class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to user_posts_path, notice: "Logged In"
    else
      redirect_to sign_in_path, alert: "Couldn't sign you in. Please check your email and password."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path, notice: "Signed out"
  end
end
