class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def self.find_by_slug(slug)
    # name=slug.split("-").map{|word| word.humanize}.join(" ")
    Song.find do |song|
      song.slug==slug
    end  end

  def slug
    self.name.downcase.split(" ").join("-")
  end
end #end of class
