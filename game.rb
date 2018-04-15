class Game

attr_accessor :name, :genre, :studio, :rating

@@all = []

  def initialize(name, genre, studio, rating)
    @name = name
    @genre = genre
    @studio = studio
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def self.worst_game
    worst_games = @@all.sort_by do |games_obj|
      games_obj.rating
    end
    worst_games.first.name
  end

  def self.top_three_games
    best_games = @@all.sort_by! do |games_obj|
      games_obj.rating
    end
    best_games.reverse[0..2]
  end

end
