class UsersController < ApplicationController

  def new

  end

  def create
    user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    passwrod_confirmation: params[:password_confirmation]
                    )
      if user.save
      session[:user_id] = user.id
      flash[:success] = "Sucessfully created account"
      redirect_to '/'
    else
      flash[:warning] = "Invalid email or password"
      redirect_to "/signup"
    end
  end
end
