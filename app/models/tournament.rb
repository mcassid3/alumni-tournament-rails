class Tournament < ActiveRecord::Base
  has_many :teams
  has_many :schools, through: :teams

  validates :name, presence: {message: "A tournament must have a name."}
  validates :date, presence: {message: "A tournament must have a date."}
end
