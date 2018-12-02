class AddFavoriteFoodToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :favorite_food, :string
    #added a column to the artists table called favorite_food
    #and that it will contain a string.
  end
end
