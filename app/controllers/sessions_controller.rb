class SessionsController < ApplicationController
  def new
  end

  def create
    @player = Player.find_by(email: session_params[:email])
    if @player && @player.authenticate(session_params[:password])
      session[:player_id] = @player.player.id
      redirect_to player_path(@player)
    else
      flash[:notice] = 'Invalid credentials. Please try again.'
      redirect_to login_path
    end
  end


  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
