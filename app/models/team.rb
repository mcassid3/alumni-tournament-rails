class Team < ActiveRecord::Base
  belongs_to :school
  belongs_to :tournament
  has_many :roster_spots
  has_many :players, through: :roster_spots


  validates :school_id, presence: {message: "A team must be associated with a high school."}
  validates :tournament_id, presence: {message: "A team must be associated with a tournament."}
  validates :tournament_id, presence: {message: "A team must be associated with a division."}

  def active?
    today = Date.today
    @tournament = Tournament.find(self.tournament_id)
    @tournament.date >= today
  end
end
