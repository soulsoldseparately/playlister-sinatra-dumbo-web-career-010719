class CreateTables < ActiveRecord::Migration
  def change
    create_table  :artists do |t|
      t.string  :artist_name
    end

    create_table  :songs do |t|
      t.string  :song_name
      t.integer :artist_id
      t.integer :song_genre_id
    end

    create_table :song_genres do |t|
      t.integer  :song_id
      t.integer  :genre_id
    end

    create_table  :genres do |t|
      t.string  :genre_name
      t.integer :song_genre_id
    end


  end
end
