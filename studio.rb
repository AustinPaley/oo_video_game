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

end
