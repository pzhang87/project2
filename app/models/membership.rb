class Membership < ActiveRecord::Base
  belongs_to :teams
  belongs_to :users
end
