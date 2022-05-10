class UsersController < ApplicationController
  def show
    @id = params[:id]
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      description: params[:description],
      email: params[:email], 
      password: params[:password],
      city_id: City.all.sample
    )
    p @user
    
    if @user.save
      redirect_to gossips_path, :notice => "User saved"
    else
      render "new", :alert => 'Alert message!'
    end
    p Rails.logger.info(@user.errors.inspect) 
  end

end