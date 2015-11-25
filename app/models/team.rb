class Team < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships # NHO: make sure you include dependent: :destroy on these assocations
  # NHO: Currently cannot delete any team, of which there are memberships

  has_many :registrations
  has_many :tournaments, through: :registrations
end
