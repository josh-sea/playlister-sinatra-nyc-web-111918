class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def self.find_by_slug(slug)
    # name=slug.split("-").map{|word| word.humanize}.join(" ")
    Genre.find do |genre|
      genre.slug==slug
    end
  end

  def slug
    self.name.downcase.split(" ").join("-")
  end
end #end of class
