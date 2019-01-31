class Genre < ActiveRecord::Base
  belongs_to :song_genres
  has_many :songs, through: :song_genres

end
