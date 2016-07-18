class PlayersController < ApplicationController
  def new
    @player = Player.new
    @roster_spot = RosterSpot.new
    @tournament = Tournament.last
    @active_teams_arr =  @tournament.teams.map {|team| [team.name + "-" + team.division, team.id]}
    @schools_arr =  School.all.map {|school| [school.name, school.id]}
  end

  def create
    #need to put a check to see if this player already has an account
    @player = Player.new(player_params)

    if @player.save 
      @roster_spot = RosterSpot.create(player_id: @player.id, team_id: @player.current_team, paid: false)
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      flash[:notice] = 'Invalid Parameters. Try again'
      redirect_to new_player_path
    end
  end

  def show
    @player = Player.find(params[:id])
    @current_team = Team.find(@player.current_team)

  end



private 

  def player_params
    params.require(:player).permit(:first_name, :last_name, :email, :password, :cell, :school_id, :grad_year, :current_team, :captain)
  end
end
