class SessionsController < ApplicationController

  def new
  end

  def create
    puts "Session "
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      log_in(@user)
      redirect_to gossips_path
      puts "hello"
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
      puts "bye bye"
    end
    
  end

  def destroy
    session.delete(:user_id)
    render 'new'
  end

end
