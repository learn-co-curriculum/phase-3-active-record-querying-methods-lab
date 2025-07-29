class AddSeasonToShows < ActiveRecord::Migration[8.0]
  def change
    add_column :shows, :season, :string
  end
end
