class AddTeamInfo < ActiveRecord::Migration
  def change
    add_column :teams, :team_name, :string
    add_column :teams, :team_description, :string
    add_column :teams, :team_logo, :string
  end
end
