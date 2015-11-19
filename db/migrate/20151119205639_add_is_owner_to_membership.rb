class AddIsOwnerToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :team_owner, :boolean
  end
end
