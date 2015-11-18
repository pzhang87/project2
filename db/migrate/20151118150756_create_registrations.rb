class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :tournament, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
    end
  end
end
