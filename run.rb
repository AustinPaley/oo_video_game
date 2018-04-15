require "./genre"
require "./game"
require "./studio"
require "pry"

bungie = Studio.new("Bungie", "Bellevue, USA", 1991)
blizzard = Studio.new("Blizzard", "Irvine, USA", 1991)
bioware = Studio.new("Bioware", "Alberta, CA", 1995)
capcom = Studio.new("Capcom", "Osaka, JP", 1979)
bethesda = Studio.new("Bethesda", "Bethesda, USA", 1986)
atari = Studio.new("Atari", "New York, USA", 1972)
bandai = Studio.new("Bandai", "Tokyo, JP", 1950)
ea = Studio.new("EA", "Redwood, CA", 1982)
firaxis  = Studio.new("Firaxis", "Hunt Valley, USA", 1996)
rockstar = Studio.new("Rockstar", "New York, USA", 1998)

shooter = Genre.new("Shooter")
mmorpg = Genre.new("MMORPG")
fighting = Genre.new("Fighting")
strategy = Genre.new("Strategy")
arcade = Genre.new("Arcade")
third_person = Genre.new("Third Person")
single_player = Genre.new("Single Player")
multiplayer = Genre.new("Multiplayer")
garbage = Genre.new("Garbage")

world_of_warcraft = Game.new("World of Warcraft", mmorpg, blizzard, 10)
halo = Game.new("Halo", shooter, bungie, 8)
mass_effect = Game.new("Mass Effect", third_person, bioware, 10)
street_fighter = Game.new("Street Fighter", fighting, capcom, 7)
fallout = Game.new("Fallout", third_person, bethesda, 8)
pac_man = Game.new("Pac Man", arcade, atari, 8)
soul_calibur = Game.new("Soul Calibur", fighting, bandai, 6)
star_wars_battlefront = Game.new("Star Wars Battlefront", garbage, ea, 1)
civilization = Game.new("Civilization", strategy, firaxis, 10)
halo2 = Game.new("Halo 2", shooter, bungie, 9)
grand_theft_auto = Game.new("Grand Theft Auto", third_person, rockstar, 9)


binding.pry

false
