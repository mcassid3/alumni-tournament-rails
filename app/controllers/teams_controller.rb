class TeamsController < ApplicationController
  def index
    @team_counts = Team.all.map {|team| team.players.count}
p "HHIIIIIIIIIIII"
    p @team_counts
  end
end
