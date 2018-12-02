class CreateArtists < ActiveRecord::Migration
  # #this is do for migration
  # def up
  # end
  # #this is undo for migration
  # def down
  #end
  def change #in place of def up and def down
  	create_table :artists do |t| #ruby creates table in SQL
  		#create columns with datatype: name
  	  t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
   end

end
