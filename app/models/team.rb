class Team < ActiveRecord::Base
  has_many :users
  has_many :registrations
  has_many :tournaments, through: :registrations
end
