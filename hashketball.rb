# Write your code here!
 
def game_hash  
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["black", "white"],
      :players => [ 
        { 
          :player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 3, 
          :blocks => 1, 
          :slam_dunks => 1, 
        },
        { 
          :player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 12, 
          :blocks => 12, 
          :slam_dunks => 7, 
        },
        { 
          :player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17, 
          :rebounds => 19, 
          :assists => 10, 
          :steals => 3, 
          :blocks => 1, 
          :slam_dunks => 15, 
        },
        { 
          :player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26, 
          :rebounds => 12, 
          :assists => 6, 
          :steals => 3, 
          :blocks => 8, 
          :slam_dunks => 5, 
        },
        { 
          :player_name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19, 
          :rebounds => 2, 
          :assists => 2, 
          :steals => 4, 
          :blocks => 11, 
          :slam_dunks => 1, 
        }
      ]
    },
    :away => { 
      :team_name => "Charlotte Hornets",
      :colors => ["turquoise", "purple"],
      :players =>  [   { 
          :player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1, 
          :assists => 1, 
          :steals => 2, 
          :blocks => 7, 
          :slam_dunks => 2, 
        },
        { 
          :player_name => "Bismak Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12, 
          :rebounds => 4, 
          :assists => 7, 
          :steals => 7, 
          :blocks => 15, 
          :slam_dunks => 10, 
        },
        { 
          :player_name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 4, 
          :blocks => 5, 
          :slam_dunks => 5, 
        },
        { 
          :player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33, 
          :rebounds => 3, 
          :assists => 2, 
          :steals => 1, 
          :blocks => 1, 
          :slam_dunks => 0, 
        },
        { 
          :player_name => "Brendan Haywood",
          :number => 33,
          :shoe => 15,
          :points => 6, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 22, 
          :blocks => 5, 
          :slam_dunks => 12, 
        } 
      ]

    },

  }

end

def num_points_scored(insert)
  game_hash.each_pair do |key1, values1|
    values1.each_pair do |key2, values2|
      if key2 == :players
        values2.each do |key_value_pair|
          if key_value_pair[:player_name] == insert 
            return key_value_pair[:points]
          end
          end
        end
    end
  end
end

def shoe_size(insert)
  game_hash.each_pair do |key1, values1|
    values1.each_pair do |key2, values2|
      if key2 == :players
        values2.each do |key_value_pair|
          if key_value_pair[:player_name] == insert 
            return key_value_pair[:shoe]
          end
          end
        end
    end
  end
end

def team_colors(insert)
  game_hash.each_pair do |key1, values1|
    values1.each_pair do |key2, values2|
      if values1[:team_name] == insert  
            return values1[:colors].map! {|color| color.capitalize} 
        end
    end
  end
end

def team_names 
team_names = []
  game_hash.each_pair do |key1, values1|
      if values1[:team_name]
        team_names << values1[:team_name]
      end  
  end
team_names 
end


def player_numbers(insert)
jersey_numbers = []
  if game_hash[:home][:team_name] == insert 
    game_hash[:home][:players].each do |player|
    jersey_numbers << player[:number]
  end 
  elsif game_hash[:away][:team_name] == insert 
    game_hash[:away][:players].each do |player|
    jersey_numbers << player[:number]
  end 
  end
  jersey_numbers
end

#def player_stats(insert)
#set variable as nil gets overridden because of equals
#  var = nil 
#  if game_hash[:home][:players].each do |player|
    #  if player[:player_name] == insert 
   #       var = player.delete[:player_name]
  #    end  
 #   end
#  elsif game_hash[:away][:players].each do |player|
     # if player[:player_name] == insert 
    #     var = player.delete[:player_name]
   #   end 
  #  end
 # end
#  var
#end
#if set variable must call - 

def player_stats(insert)
  var = nil 
  game_hash.each_pair do |key1, values1|
    values1[:players].each do |stats|
      if stats[:player_name] == insert
        var = stats
      end
    end
  end
  var.delete(:player_name)
  var
end
#when treating variables... do additional manipulation outside the if and elses

def big_shoe_rebounds
  shoe_size = 0
  rebounds = nil
  game_hash.each_pair do |key1, values1|
    values1.each_pair do |key2, values2|
      if key2 == :players
        values2.each do |key_value_pair| 
          if key_value_pair[:shoe] > shoe_size
          rebounds = key_value_pair[:rebounds]
          shoe_size = key_value_pair[:shoe]
          end
          end
          end
    end
  end
  rebounds
end

puts big_shoe_rebounds 
#if the key_value_pair rebounds is the maximum value
#t

#STEP 1... iterate through
#go through the hash, look up the name, and find the points
#key_value_pair.each_pair do |key3, values3| 
 #Each player (i.e. each index item of the array) is 
 #represented by a hash

#return will only ever get you one thing
#if shoveling into array always return 




