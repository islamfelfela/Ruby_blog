class UsersController < ApplicationController
  def login
  end

  def signin
  end

  def register
  end

  def signup
    @user = User.create(name: params[:name], password: params[password], password_confirmation: params[password_confirmation])
    if @user.persisted?
      session[:id] = @user.id
      redirect_to :root
    else
      render :register
    end
  end
end
