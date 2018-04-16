class Studio

attr_accessor :name, :location, :founding_date

@@all = []

  def initialize(name, location, founding_date)
    @name = name
    @location = location
    @founding_date = founding_date
    @@all << self
  end

  def self.all
  @@all
  end

  def all_games_by_studio
    Game.all.select do |game_obj|
      game_obj.studio == self
    end
  end

  def self.oldest
    oldest = @@all.sort_by do |game_obj|
      game_obj.founding_date
    end
    "#{oldest[0].name}, #{oldest[0].founding_date}"
  end

  def studio_location
    studio = @@all.select do |game_obj|
      game_obj.name == self.name
    end
    studio[0].location
  end

  def studio_avg_rating
    studio_ratings_sum = 0
    studio = Game.all.select do |game_obj|
      game_obj.studio == self
    end
    studio_ratings = studio.map do |studio_obj|
      studio_obj.rating
    end
    studio_ratings.map do |studio_ratings|
      studio_ratings_sum += studio_ratings
    end
    final = (studio_ratings_sum.to_f / studio_ratings.count)
    final
  end

  def self.best_rated_studio
    studio_ratings_hash = Hash.new(0)
    Game.all.map do |game_obj|
      studio_ratings_hash[game_obj.studio.name] = game_obj.rating
    end
    studio_ratings_hash.sort_by do |k, v|
      v
    end.last[0]
  end

  def self.most_prolific
    name_count = Game.all.map do |game_obj|
      game_obj.studio.name
    end
    name_count.max_by do |i|
      name_count.count(i)
    end
  end

  # genre_names.max_by do |i|
  #   genre_names.count(i)
  # end

end
