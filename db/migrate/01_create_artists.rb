class CreateArtists < ActiveRecord::Migration
  def up # define code to execute when migration is run (DO)
  end

  def down # define code to execute when migration rolled back (UNDO)
  end

  def change #  Primary way of writing migrations, ActiveRecord knows how to reverse migration automatically
    # use change to create tables
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
      # ActiveRecord generates ID primary key automatically
    end
  end
end


#### Normally, would do this to create a database :
# connecton = ActiveRecord::Base.establish_connection(
#   :adaptor => "sqlite3",
#   :database => "db.artists.sqlite"
# )
#
# sql = <<-SQL
#   CREATE TABLE IF NOT EXISTS artists (
#     id INTEGER PRIMARY KEY,
#     name TEXT,
#     genre TEXT,
#     age INTEGER,
#     hometown TEXT
#   )
# SQL
# ActiveRecord::Base.connecton.execute(sql)
