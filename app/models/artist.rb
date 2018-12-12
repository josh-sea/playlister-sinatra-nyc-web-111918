class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def self.find_by_slug(slug)
    # name=slug.split("-").map{|word| word.humanize}.join(" ")
    Artist.find do |artist|
      artist.slug==slug
    end
  end

  def slug
    self.name.downcase.split(" ").join("-")
  end
end #end of class
