class AddTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :tournament_name
      t.datetime :tournament_start
      t.datetime :tournament_end
      t.string :tournament_type
      t.integer :max_teams
    end
  end
end
