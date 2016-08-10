class SessionsController < ApplicationController
  def new
  end

  def create
    @player = Player.find_by email: login_params[:email]

    if @player && @player.authenticate(login_params[:password])
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      flash[:notice] = 'Invalid credentials. Please try again.'
      redirect_to login_path
    end
  end


  def destroy
    session[:player_id] = nil
    redirect_to root_path
  end

  private

  def login_params
    params.require(:player).permit(:email, :password)
  end

end
