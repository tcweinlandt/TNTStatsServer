class Match < ActiveRecord::Base

has_many :matchings
has_many :players, through: :matchings

def winner_pick_string
  a = self.winner_picks.split('')
  b= ""
  a.each do |c|
    d = case c 
     when '0' then "Lizard, "
     when '1' then "Squirrel, "
     when '2' then "Toad, "
     when '3' then "Pigeon, "
     when '4' then "Mole, "
     when '5' then "Ferret, "
     when '6' then "Chameleon, "
     when '7' then "Snake, "
     when '8' then "Falcon, "
     when '9' then "Skunk, "
     when 'a' then "Boar, "
     when 'b' then "Fox, "
     when 'c' then "Badger, "
     when 'd' then "Wolf, "
     when 'e' then "Owl, "
     when 'f' then "Barbed wire, "
     when 'g' then "Land mines, "
     when 'h' then "Machine guns, "
     when 'i' then "Balloon snipers, "
     when 'j' then "Artillery, " 
     else "Error, "
   end
  b << d
 end
 b[0..-3]
end

def loser_pick_string
  a = self.loser_picks.split('')
  b= ""
  a.each do |c|
    d = case c 
     when '0' then "Lizard, "
     when '1' then "Squirrel, "
     when '2' then "Toad, "
     when '3' then "Pigeon, "
     when '4' then "Mole, "
     when '5' then "Ferret, "
     when '6' then "Chameleon, "
     when '7' then "Snake, "
     when '8' then "Falcon, "
     when '9' then "Skunk, "
     when 'a' then "Boar, "
     when 'b' then "Fox, "
     when 'c' then "Badger, "
     when 'd' then "Wolf, "
     when 'e' then "Owl, "
     when 'f' then "Barbed wire, "
     when 'g' then "Land mines, "
     when 'h' then "Machine guns, "
     when 'i' then "Balloon snipers, "
     when 'j' then "Artillery, " 
     else "Error, "
   end
  b << d
 end
 b[0..-3]
end

    
end
