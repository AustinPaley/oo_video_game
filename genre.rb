class Genre

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_games_of_genre
    Game.all.select do |game_obj|
      game_obj.genre == self
    end
  end

  def self.most_popular
  genre_count = Hash.new(0)
    Game.all.each do |game_obj|
      genre_count[game_obj.genre] += 1
    end
  most_popular_genre = genre_count.max_by do |k, v|
    v
  end
  most_popular_genre[0].name
  end

end
