# Write your code here!
require 'pry'

def game_hash 
  game_hash = {:home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => {"Alan Anderson" =>{:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}, "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7}, "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15}, "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5}, "Jason Terry" =>{:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1} }}, 
  :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => {"Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}, "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10}, "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5}, "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0}, "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12} }}}
end 

def num_points_scored(player_name)
  game_hash.each do |location, info|
    info[:players].each do |name, data|
      if name == player_name 
        return data[:points]
      end 
    end 
  end 
end 

def shoe_size(player_name)
  game_hash.each do |location, info|
    info[:players].each do |name, data|
      if name == player_name
        return data[:shoe]
      end 
    end 
  end 
end 

def team_colors(team)
  if team == "Charlotte Hornets"
    game_hash[:away][:colors]
    elsif team == "Brooklyn Nets"
    game_hash[:home][:colors]
  else 
    
  end 
end 

def team_names
   game_hash.collect{|team, team_data| team_data[:team_name]}
end

def player_numbers(team_name)
  jersey_numbers = [] 
  game_hash.each do |location, team|
    team[:players].each do |name, stats|
      if team[:team_name] == team_name 
        jersey_numbers << team[:players][name][:number] 
      end 
    end 
  end 
  return jersey_numbers 
end 

def player_stats(player_name)
  player_stats = {}
  game_hash.each do |team, attributes|
     game_hash[team].each do |attribute, value|
      if attribute == :players
        game_hash[team][:players].each do |name, stats|
          if name == player_name
            player_stats = game_hash[team][:players][name]
          end
        end
      end
    end
  end
  player_stats
end

def big_shoe_rebounds 
  largest_shoe = 0
    rebounds = 0
    player = ""
    game_hash.each do |origin, team|
        team[:players].each do |name, stats|
            if largest_shoe < shoe_size(name)
                largest_shoe = shoe_size(name)
                player = name
            end
        end
    end
    return player_stats(player)[:rebounds]
end
 
 
 

# write a method that will give me all the players names in an array....

def all_players 
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  home_players + away_players 
end 





# write a method that will give me all the players with more than 10 points....

def more_than_10
  all_players.collect do |player|
    if player[:points] > 10
     player
    
      
    end 
     

      
    



# write the same 2 methods as above, but with the each method

def all_players 
  all_players = []
  game_hash.each do |team, team_stats|
    team_stats[:players].each do |name|
      all_players << name
    end 
    return all_players
  end 
  
  def more_than_10



    


    
   
 













