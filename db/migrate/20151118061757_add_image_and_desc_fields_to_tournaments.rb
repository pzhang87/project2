class AddImageAndDescFieldsToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :tournament_description, :string
    add_column :tournaments, :tournament_banner, :string
  end
end
