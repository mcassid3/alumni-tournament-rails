class Player < ActiveRecord::Base
  include PlayersHelper

  has_many :roster_spots
  has_many :teams, through: :roster_spots
  belongs_to :school, foreign_key: :school_id

  has_secure_password

  validates :first_name, presence: {message: "A player must have a first name."}
  validates :last_name, presence: {message: "A player must have a last name."}
  validates :email, presence: {message: "An email must be provided."}
  validates :password_digest, presence: {message: "A palayer must have a password"}
  validates :cell, presence: {message: "A cell phone number must be provided."}

end
