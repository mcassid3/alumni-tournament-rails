class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
    @current_tournament = Tournament.last
  end
end
