class Tournament < ActiveRecord::Base
  has_many :registrations
  has_many :teams, through: :registrations
end
