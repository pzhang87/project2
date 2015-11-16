class ReverseForeignKeyOnTeamsUsers < ActiveRecord::Migration
  def change
    remove_reference :teams, :user, index: true
    add_reference :users, :team, index: true
  end
end
