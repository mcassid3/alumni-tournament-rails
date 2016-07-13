class Player < ActiveRecord::Base
  include PlayersHelper

  has_many :roster_spots
  has_many :teams, through: :roster_spots
  has_secure_password

  validates :first_name, presence: {message: "A player must have a first name."}
  validates :last_name, presence: {message: "A player must have a last name."}
  validates :email, presence: {message: "An email must be provided."}
  validates :password_digest, presence: {message: "A palayer must have a password"}
  validates :cell, presence: {message: "A cell phone number must be provided."}
  validates :school_id, presence: {message: "A player must be associated with a school."}

end
