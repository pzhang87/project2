class Team < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships
  
  has_many :registrations
  has_many :tournaments, through: :registrations
end
