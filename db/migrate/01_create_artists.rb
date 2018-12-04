class CreateArtists < ActiveRecord::Migration

def change
  create_table :artists do |t|
    t.string :named
    t.string :grade
  end
end

end
