class RosterSpot < ActiveRecord::Base
  belongs_to :team
  belongs_to :player

  validates :player_id, presence: {message: "A roster must be associated with a team."}
  validates :team_id, presence: {message: "A roster must associated with a team"}
end
