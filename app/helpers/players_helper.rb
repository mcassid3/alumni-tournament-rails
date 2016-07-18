module PlayersHelper

  def current_user
    @current_user ||= Player.find_by(id: session[:player_id])
  end

  def logged_in?
    current_user != nil
  end

end
