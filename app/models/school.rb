class School < ActiveRecord::Base
  has_many :teams
  has_many :tournaments, through: :tournaments
  has_many :roster_spots, through: :teams
  has_many :players, through: :roster_spots

  validates :name, presence: {message: "School must have a name."}
end
