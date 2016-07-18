class PlayersController < ApplicationController
  def new
    @player = Player.new
    @roster_spot = RosterSpot.new
    @tournament = Tournament.last
    @active_teams_arr =  @tournament.teams.map {|team| [team.name, team.id]}
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      flash[:notice] = 'Invalid Parameters. Try again'
      redirect_to new_player_path
    end
  end

  def show
    @player = Player.find(params[:id])

  end



private 

  def player_params
    params.require(:player).permit(:first_name, :last_name, :email, :password, :cell, :current_team, :captain)
  end
end
